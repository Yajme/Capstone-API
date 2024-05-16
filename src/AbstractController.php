<?php

abstract class BaseController{

    protected $gateway;
    public function __construct($_gateway)
    {
        $this->gateway = $_gateway;
    }



    
}


?>