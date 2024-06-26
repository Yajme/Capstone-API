<?php


require __DIR__ . '/Model/connection.php';

class maintenanceGateway extends Database
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

    public function getMaintenance($id){
        $id = $this->escape_string($id);
        $query = "SELECT * FROM `tbl_maintenance` where id = $id";
        echo json_encode($this->read($query), JSON_PRETTY_PRINT);
    }


    public function getMaintenanceAll(){

        $query = "SELECT * FROM `tbl_maintenance`";
        $result = $this->read($query);
        echo json_encode($result, JSON_PRETTY_PRINT);
    }


}
?>