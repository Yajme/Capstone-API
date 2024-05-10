<?php


require __DIR__ . '/Model/connection.php';

class SampleGateway extends Database
{
    public function __construct()
    {
        parent::__construct();
    }

    public function getSampleData()
    {
        $response = array(
            'hello' => 'world',
            'api' =>'using php',
            'Connection Established?' => isset($this->connection)
        );
        echo json_encode($response,JSON_PRETTY_PRINT);
    }
}
?>