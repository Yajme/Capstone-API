<?php

class predictionsController{

private $gateway;

public function __construct($_gateway){
    $this->gateway = $_gateway;
}


public function retrievePrediction ($request, ?string $id) :void

{
   if($id){
    $this->processPrediction($request, $id);
   }
   else{
    $this->processPredictionAll($request);
   }
}

public function processPrediction ($method, ?string $id) :void

{
   switch($method){
    case "GET":
        $this->gateway->getPrediction($id);

   }
   
}

public function processPredictionAll ($method)

{
   switch($method){
    case "GET":
        $this->gateway->getPredictionAll();

   }
   
}


}



?>