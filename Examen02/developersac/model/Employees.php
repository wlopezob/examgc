<?php
class Employees{
    public function Listar($email = ""){
        $sql = "select id,name,email,position,salary from employees where email like '%$email%';";
        $resultado = Conexion::ArrList($sql);
        return $resultado;
    }
    public function ListarSalario($salarioInicial,$salarioFinal){
        $sql = "select id,name,email,position,salary from employees where salary between  $salarioInicial and $salarioFinal;";
        $resultado = Conexion::ArrList($sql);
        return $resultado;
    }
    public function ObtenerEmployees($id){
        $sql = "select id,name,email,phone,address,position,salary from employees where id='$id';";
        return Conexion::ArrOneList($sql);
    }
    
    public function ObtenerSkills($id){
        $sql = "select skill from skills where Employees_id='$id'";
        return Conexion::ArrList($sql);
    }
}
