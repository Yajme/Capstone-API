<?php

class maintenanceController{

private $gateway;

public function __construct($_gateway){
    $this->gateway = $_gateway;
}

public function retrieveMaintenance ($request, ?string $id) :void

{
   if($id){
    $this->processMaintenance($request, $id);
   }
   else{
    $this->processMaintenanceAll($request);
   }
}

public function processMaintenance ($method, ?string $id) :void

{
   switch($method){
    case "GET":
        $this->gateway->getMaintenance($id);

   }
   
}

public function processMaintenanceAll ($method)

{
   switch($method){
    case "GET":
        $this->gateway->getMaintenanceAll();

   }
   
}



}



?>