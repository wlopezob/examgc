<?php
// Routes
require __DIR__.'/../src/Conexion.php';
require __DIR__.'/../model/Employees.php';

$app->get('/employees/{id}', function ($request, $response, $args) {
    $employees = new Employees();
    $id = $request->getAttribute('id');
    $employee = $employees->ObtenerEmployees($id);
    $skills = $employees->ObtenerSkills($id);
    $resultado = array();
    $resultado['employee'] = $employee;
    $resultado['skills'] = $skills;
    return $response->withJSON($resultado);
});
$app->post('/email/[{email}]', function ($request, $response, $args) {
    $employees = new Employees();
    $email = $request->getParam('email');
    $datos = $employees->Listar($email);
    $resultado = array();
    $resultado['listado'] = $datos;
    return $response->withJSON($resultado);
});
$app->get('/[{name}]', function ($request, $response, $args) {
    
    $this->logger->info("Slim-Skeleton '/' route");
    $employees = new Employees();
    $datos = $employees->Listar();
    $args['listado'] = $datos;
    // Render index view
    return $this->renderer->render($response, 'index.phtml', $args);
});
$app->get('/employeessalario/{salario1}/{salario2}', function ($request, $response, $args) {
    $employees = new Employees();
    $salario1 = $request->getAttribute('salario1');
    $salario2 = $request->getAttribute('salario2');
    $datos = $employees->ListarSalario($salario1,$salario2);
    $args['listado'] = $datos;
    return $response->withJSON($resultado);
    
});
