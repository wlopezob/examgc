<?php
class CompleteRange {
    function build($numeros){
        if(!empty($numeros)){
            
            //consideramos que todos los numeros sean enteros
            foreach ($numeros as $key => $numero) {
                if(!is_int($numero) || $numero <= 0){
                    echo 'Los numeros no son enteros positivos';
                    return false;
                }else{
                    //restamos los numeros y tiene que ser positivo 
                    //y mayor que 0 para verificar que son numeros continuos
                    if($key > 0){
                        //obtenemos el primer numero
                        $primerNumero = $numeros[$key - 1];
                        $ultimoNumero = $numero;
                        if($ultimoNumero - $primerNumero <= 0){
                            echo 'Los numeros no son consecutivos';
                            return false;
                        }
                    }
                    
                }
            }
            //obtenemos el primer numero
            $primerNumero = $numeros[0];
            $ultimoNumero = $numeros[count($numeros) - 1];
            $resultado = array();
            for($i = $primerNumero; $i<=$ultimoNumero;$i++){
                $resultado[] = $i;
            }
            return $resultado;
        }
        return $numeros;
    }
}
