
			<?php
			include("conexion.php");
			
			
			if(isset($_POST["guardar"])){
				
				$nombre=$_POST["nombre"];
				$direccion=$_POST["direccion"];
        $telefono=$_POST["telefono"];
        $ruc=$_POST["ruc"];
        $correo=$_POST["correo"];
                $contraseña=$_POST["clave"];
                $re_contraseña=$_POST["re_clave"];


                $resultado = $con->query("SELECT * FROM libreria");
                   
                $id=$resultado->num_rows;
                $id=$id+1;
			
				
                    $sql="INSERT INTO libreria(id,clave,RUC,nombre,direccion,telefono,correo) VALUES('$id','$contraseña','$ruc','$nombre','$direccion','$telefono','$correo')";
					
					
					if ($con->query($sql) === TRUE) {
    echo "";
} else {
    echo "Error: " . $sql . "<br>" . $con->error;
}

				
            }

            header('Location: perfil.html');

?>
            
    