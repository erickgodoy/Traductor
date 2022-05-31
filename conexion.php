<?php
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname="traductor";

  try {
    $conn=new PDO("mysql:host=$servername;dbname=$dbname",$username,$password);
  } catch (PDOException $e) {
    die('connection failed'.$e->getMessage);
  }

 ?>
