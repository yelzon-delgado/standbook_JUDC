
    <?php
			include("conexion.php");
			
			
			if(isset($_POST["guardar"])){
				$nombre=$_POST["nombre"];
				$apellido=$_POST["apellido"];
				$sexo=$_POST["sexo"];
                $edad=$_POST["edad"];
                $direccion=$_POST["direccion"];
                $clave=$_POST["clave"];
                $telefono=$_POST["telefono"];

                $tabla="autor";
               
                $imagen = addslashes(file_get_contents($_FILES['imagen']['tmp_name']));
 
                $resultado = $con->query("SELECT * FROM autor");
                   
                $codigo=$resultado->num_rows;
                $codigo=$codigo+1;
                
                $sql="INSERT INTO autor(id,nombre,apellido,clave,sexo,edad,direccion,telefono)VALUES('$codigo','$nombre','$apellido','$clave','$sexo','$edad','$direccion','$telefono')";
					
					
                if ($con->query($sql) === TRUE) {
          echo "";
      } else {
          echo "Error: " . $sql . "<br>" . $con->error;
      }             
    }

    header('Location: perfil.html');
				
       ?>

    