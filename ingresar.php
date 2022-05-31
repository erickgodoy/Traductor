<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <form action="ingresar.php" method="POST">
        ESP: <input type="text" name="esp" placeholder="Español.."> <br> <br>
        ENG: <input type="text" name="eng" placeholder="InGLES"><br>
        <input type="submit" name="enviar" value="Enviar">
        </form>
        <?php
    if(!empty($_POST['esp']) && !empty($_POST['eng'])){
        include "conexion.php";

        $spanish = $_POST['esp'];
        $english = $_POST['eng'];

        $spanish = ucfirst(strtolower($spanish));
        $english = ucfirst(strtolower($english));
/*
        $consult = "SELECT esp from palabra where esp='$spanish'";
        $resultado = mysqli_query($conn,$consult);
  */     
    
        $consulta= "SELECT esp from palabra where esp='$spanish'";
		$records= $conn->prepare($consulta);
	    $records->execute();
       
        $valor = "";
        while ($results = $records->fetch(PDO::FETCH_ASSOC)) {
	    	$valor = $results['esp'];
	    }	

/*
        $valor = "";
        while($campo = mysqli_fetch_array($resultado)){
            $valor = $campo[0];
        }
*/
        if($spanish != $valor){
    
            $num_caracter = strlen($spanish);
    /*
            $sql2 = "INSERT INTO palabra (esp,eng,num_char) VALUES('$spanish','$english','$num_caracter')";
            mysqli_query($conn,$sql2); 
      */   
        
            $sql2= "INSERT INTO palabra (esp,eng,num_char) VALUES('$spanish','$english','$num_caracter')";
            $records=$conn->prepare($sql2);
            $records->execute();
     
            ?>
            <p>registrado correctamente..</p>
            <?php
        }else{
            ?>
            <p>EXISTE</p>
            <?php
        }
    }  
    ?>
</body>
</html>