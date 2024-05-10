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
        echo json_encode("Hello World");
    }
}
?>