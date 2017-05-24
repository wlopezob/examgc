<?php

class ClearPar {

    function build($cadena) {
        $contador = 0;
        $resultado = "";
        $count = mb_strlen($cadena, 'UTF-8');
        for ($i = 0; $i < $count; $i++) {
            $letra = mb_substr($cadena, $i, 1);
            //obtenemos el codigo ascii
            $ord = ord($letra);
            //comparamos si ( y el contador esta en 0
            if($ord == 40 && $contador == 0){
                $contador += 1;
            }
            //si es ) y encontro el (
            else if($ord == 41 && $contador == 1){
                //reiniciamos la busqueda
                $contador = 0;
                //añadimos al resultado la pareja encontrada
                $resultado .= "()";
                
            }else if($ord != 40 && $ord != 41){
                //se ingreso algun otro caracter, se notifica el error
                echo 'Ingresar solamente "(" o ")"';                
                return false;
            }
        }
        return $resultado;
    }

}
