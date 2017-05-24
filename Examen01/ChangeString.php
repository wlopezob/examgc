<?php
class ChangeString {
    function build($palabra){
        if(!empty($palabra)){
            $count = mb_strlen($palabra,'UTF-8');
            $return = "";    
            for($i = 0; $i < $count; $i++){
                $letra = mb_substr($palabra, $i, 1);
                if($letra === "Ñ"){
                    $return .= 'O';
                }else if($letra === 'ñ'){
                    $return .= 'o';
                }else{
                    $ord = ord($letra);
                    if(($ord >= 97 || $ord >=65) && ($ord <= 122 || $ord <=90)){
                        $ord += 1;
                        // si es 123, iniciamos en a
                        if($ord == 123){
                            $return .= 'a';
                        }else if($ord == 91){
                            $return .= 'A';
                        }else{
                            $return .= chr($ord);
                        }
                    }else{
                        $return .= chr($ord);
                    }
                }
            }
            return $return;
        }
        return $palabra;
    }

}
