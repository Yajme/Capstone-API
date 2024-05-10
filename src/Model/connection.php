<?php 
require 'vendor/autoload.php';
use Dotenv\Dotenv;

$dotenv = new DotEnv(__DIR__);
$dotenv->load();
    abstract class Database
    {
        private $servername;
        private $username;
        private $password;
        private $database ;
        protected $connection;

        public function __construct()
        {
            $this->servername = getenv('DB_HOST');
            $this->username = getenv('DB_USERNAME');
            $this->password = getenv('DB_PASSWORD');
            $this->database = getenv('DB_DATABASE');
            
            $this->connection = new mysqli($this->servername, $this->username, $this->password, $this->database);
            if ($this->connection->connect_error) {
                die("Connection failed: " . $this->connection->connect_error);
            }
        }

    /**
     * Fetches rows from a database result set and returns them as an array of associative arrays.
     *
     * @param mysqli_result $result The result set obtained from a database query.
     * @return array An array containing the fetched rows as associative arrays.
     */
    private function fetchRows($result) {
        $dataArray = array();

        while ($row = $result->fetch_assoc()) {
            // Create a new associative array for each row
            $rowData = array();

            // Iterate over each column in the row
            foreach ($row as $columnName => $columnValue) {
                // Add each column to the $rowData array
                $rowData[$columnName] = $columnValue;
            }

            // Append the row data to the main array
            $dataArray[] = $rowData;
        }

        return $dataArray;
    }

    public function execute($query){
        return  $this->connection->query($query);
    }
    /**
     * Reads data from the database based on the provided query.
     *
     * @param string $query The SQL query to execute.
     * @return array The fetched rows from the database.
     * @throws Exception If no data is found.
     */
    public function read($query){
        // Execute the query
        $result = $this->connection->query($query);
        //@Exception if no data found
        if (!$result) throw new Exception("No Data Found");
        
        return $this->fetchRows($result);
    }
    /**
     * Escapes a string value to prevent SQL injection.
     *
     * @param string $value The string value to be escaped.
     * @return string The escaped string value.
     * @throws Exception If the input value is not a string or if the escape operation fails.
     */
    public function escape_string($value) {
        // Check if the input is a valid string
        if (!is_string($value)) {
            throw new Exception('Invalid input: $value must be a string.');
        }
        // Escape the string
        $escapedValue = $this->connection->real_escape_string($value);

        // Check if the escape was successful
        if ($escapedValue === false) {
            throw new Exception('Invalid input: $value must be valid');
        }
        return $escapedValue;
    }
    
    public function statementBind($sql, $params) {
        // Prepare the query
        $sqlstmt = $sql;
        $stmt = mysqli_prepare($this->connection, $sqlstmt);
        
        $parameters = array();
        $types = ''; // Variable to store parameter types
    
        foreach ($params as $key => $value) {
            // Build the types string based on the type of each parameter
            if (is_int($value)) {
                $types .= 'i'; // 'i' represents integer
            } elseif (is_double($value)) {
                $types .= 'd'; // 'd' represents double
            } elseif (is_string($value)) {
                $types .= 's'; // 's' represents string
            } else {
                $types .= 'b'; // 'b' represents BLOB
            }
    
            $parameters[] = &$params[$key]; // Pass parameters by reference
        }
    
        // Bind parameters
        mysqli_stmt_bind_param($stmt, $types, ...$params);
    
        // Execute the query
        return mysqli_stmt_execute($stmt);
    }
    }

?>