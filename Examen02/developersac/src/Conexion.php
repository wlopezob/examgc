<?php
class Conexion {
	private static $StateConexion = false;
	private static $cnn;
    /**
     *
     * Numero de Columnas de una Consulta
     */
	public static $numColumn = 0;
    /**
     * Numero de Filas de una consulta
     */
	public static $numRows = 0;
	public static function OpenConexion() {
		try {
            	self::$cnn=new mysqli('localhost','root','','employees');
	        if (mysqli_connect_errno()) {
				self :: $StateConexion = FALSE;
				throw new Exception("Error Al Conectarse a la Base de Datos: " . mysqli_connect_error());
			}
			self::$cnn->query("SET SESSION character_set_server='utf8';");
            self::$cnn->query("SET SESSION collation_server='utf8_general_ci';");
            self::$cnn->query("SET CHARACTER SET 'UTF-8';");
		} catch (Exception $ex) {
			self :: $StateConexion = FALSE;
            throw new Exception($ex->getMessage());
		}
	}
	public static function traerDatos($consulta) {
		try {
			if (self :: $StateConexion == FALSE) {
				self :: OpenConexion();
			}
                        $result = self :: $cnn->query($consulta);
			if(!$result){
				throw new Exception('Error: '+self::$cnn->error);
			}
			//obtenemos el numero de columnas de la seleccion
			self :: $numColumn = $result->field_count;
			//obtenemos el numero de filas de la seleccion
			self :: $numRows = $result->num_rows;
			return ($result);
		} catch (Exception $ex) {
			throw new Exception($ex->getMessage());
		}
	}
        public static function insert_id(){
            return self :: $cnn->insert_id;
        }
	public static function ejecutar($consulta) {
		try {
			if (self :: $StateConexion == FALSE) {
				self :: OpenConexion();
			}
			$result = self :: $cnn->query($consulta);
			if(!$result){
				throw new Exception('Error: '+self::$cnn->error);
			}
                        return $result;
		} catch (Exception $ex) {
			throw new Exception($ex->getMessage());
		}
	}
	/**
     * Obtiene una lista de valores
     * @param string $sql sentencia sql
     * @param array $op array que van a conformar la lista
     * @return array lista de valores extraidos de la consulta
     */
    public static function ArrList($sql,$op = null){
        try {
            $result = self::traerDatos($sql);
            $array = array();
            $indi = 0;
            $keys = array();
            while ($row = $result->fetch_assoc()){
                if(count($keys) <= 0)
                    $keys = array_keys($row);
                foreach ($keys as $tkey){
                    $array[$indi][$tkey] = $row[$tkey];
                }
                if(!is_null($op)){
                    $keysop = array_keys($op);
                    foreach ($keysop as $tkey){
                        $array[$indi][$tkey] = $op[$tkey];
                    }
                }
                $indi += 1;
            }
            return $array;
        } catch (Exception $ex) {
            throw new Exception($ex->getMessage());
        }

    }
    /**
     * Obtiene una lista de valores
     * @param string $sql sentencia sql
     * @param array $op array que van a conformar la lista
     * @return array lista de valores extraidos de la consulta
     */
    public static function ArrOneList($sql,$op = null){
        try {
            $result = self::traerDatos($sql);
            $array = array();
            $keys = array();
            while ($row = $result->fetch_assoc()){
                if(count($keys) <= 0)
                    $keys = array_keys($row);
                foreach ($keys as $tkey){
                    $array[$tkey] = $row[$tkey];
                }
                if(!is_null($op)){
                    $keys = array_keys($op);
                    foreach ($keys as $tkey){
                        $array[$tkey] = $op[$tkey];
                    }
                }

            }
            return $array;
        } catch (Exception $ex) {
            throw new Exception($ex->getMessage());
        }

    }
}
?>
