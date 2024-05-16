<?php


require __DIR__ . '/Model/connection.php';

class predictionsGateway extends Database
{
    public function __construct()
    {
        parent::__construct();
    }

    public function getPrediction($id){
        $id = $this->escape_string($id);
        $query = "SELECT * FROM `view_fish_kill_predictions` where cage_id = $id";
        echo json_encode($this->read($query), JSON_PRETTY_PRINT);
    }


    public function getPredictionAll(){

        $query = "SELECT * FROM `view_fish_kill_predictions`";
        $result = $this->read($query);
        echo json_encode($result, JSON_PRETTY_PRINT);
    }


}
?>