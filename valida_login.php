<?php
session_start();
include("conexion.php");
$usu=$_REQUEST['usuario'];
$clave=$_REQUEST['contraseña'];
$consul=("SELECT * FROM libreria WHERE id='$usu' and clave='$clave'");
$result=$con->query($consul);
$num=mysqli_fetch_array($result);
if($num>0){
    header('Loction: profile.php');
}else{
    header('Location: login.html');
}

$_SESSION['nombre']=$num['nombre'];
$_SESSION['id']=$num['id'];

?>