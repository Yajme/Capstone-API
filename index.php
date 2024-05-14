<?php

declare(strict_types=1);

header("Content-Type: application/json; charset=UTF-8");
$parts = explode('/', $_SERVER['REQUEST_URI']);

//Controller for routing
//Gateway is for handling the database

$controller = null;

spl_autoload_register(function ($class) {
    require __DIR__ . '/src/' . str_replace('\\', '/', $class) . '.php';
});
//Gets the second part of the url
//e.g. /capstone-api/hello
//    ^       ^         ^
//    |       |         |
//   [0]     [1]       [2]
//For determining what route the middleware directs to

switch ($parts[2]) {
    case 'maintenance':
        $controller = new SampleController(new SampleGateway);
        $id = $parts[3] ?? null;
        $controller->retrieveMaintenance($_SERVER['REQUEST_METHOD'], $id);
        break;
    case 'prediction':
        $controller = new SampleController(new SampleGateway);
        $id = $parts[3] ?? null;
        $controller->retrievePrediction($_SERVER['REQUEST_METHOD'], $id);
        break;


    case 'api':

        break;
    case 'gateway':

        $sample = new SampleGateway();
        $sample->getSampleData();
        break;
    case '':
        echo 'you seem lost';
        break;

    default:
        http_response_code(404);
        exit;
        break;
}
