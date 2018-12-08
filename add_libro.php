<?php
			include("conexion.php");
			
			
			if(isset($_POST["guardar"])){
				$titulo=$_POST["titulo"];
				$idioma=$_POST["idioma"];
				$descripcion=$_POST["descripcion"];
                $editorial=$_POST["editorial"];
                $precio=$_POST["precio"];
                $autor=$_POST["autor"];

                $tabla="libros";
               
                $imagen = addslashes(file_get_contents($_FILES['imagen']['tmp_name']));
 
                $resultado = $con->query("SELECT * FROM libros");
                   
                $codigo=$resultado->num_rows;
                $codigo=$codigo+1;
                
                $sql="INSERT INTO libros(codigo,titulo,idioma,precio,autor,editorial,descripcion)VALUES('$codigo','$titulo','$idioma','$precio','$autor','$editorial','$descripcion')";
					
					
                if ($con->query($sql) === TRUE) {
          echo "";
      } else {
          echo "Error: " . $sql . "<br>" . $con->error;
      }             
    }
				header('Location: perfil.html');
       ?>

    