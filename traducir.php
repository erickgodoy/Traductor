<?php

if(!empty($_POST['palabra']) ||  !empty($_POST['palabra2'])){

    function traducir($palabra, $lan1,$lan2){
        include "conexion.php";
        $pal = ucfirst(strtolower($palabra));
    
         $sql= "SELECT $lan1 from palabra where $lan2='$pal'";
         $records= $conn->prepare($sql);
         $records->execute();
    
         $valor = "";
         while ($results = $records->fetch(PDO::FETCH_ASSOC)) {
             $valor = $results[$lan1];
         }	
        return $valor;
    }
    
    if (isset($_POST['traducir'])) {
        $VAR = traducir($_POST['palabra'],'eng','esp');
        $resultado = $VAR;
    }

    if (isset($_POST['traducir2'])) {
        $VAR = traducir($_POST['palabra2'] , 'esp', 'eng');
        $resultado = $VAR;
    }
    
}
    
?>