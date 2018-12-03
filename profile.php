<?php
session_start('');
if(($_SESSION["id"])!=''){

}
?>
<html>
    <head>
        <title>
</head>
<body>
<h1>bienbenido: <?php echo $_SESSION['nombre'];?></h1>

<br><br>
<center><a href="cerrar_secion.php">cerrar secion</a></center>
<center>
    <table border='1' width="500">
        <tr bgcolor='skyblue'>
</tr>
<?php
include("conexion.php");
$sql=$con->query("SELECT * from libros WHERE codigo="'.$_SESSION['codigo'].'"");
while($res=$con->fetch_array($sql)){
?>
<tr><td><?php echo $res['codigo'];?></td>
<tr><td><?php echo $res['titulo'];?></td>
<tr><td><?php echo $res['precio'];?></td>
}
</table>
</body>
<?php
}else{
    echo "necesitas logearte de nuevo";
    header('Location: login.html');
}
?>