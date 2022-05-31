<?php 
	require "conexion.php";
	$nombre = $_GET["nombre"];
	if (!empty($nombre)) {
        $sql="SELECT * FROM palabra WHERE esp LIKE '%".$nombre."%'";
		$records=$conn->prepare($sql);
	    $records->execute();
	    while ($results = $records->fetch(PDO::FETCH_ASSOC)) {
	    	echo $results['esp']."</br>";
	    }	
	}else{
		$consultageneral=$conn->prepare("SELECT * FROM palabra");
		$consultageneral->execute();
		while ($results = $consultageneral->fetch(PDO::FETCH_ASSOC)) {
	    	echo $results['esp']." : ".$results['eng']."</br>";
	    }	
	}
 ?>