<?php
			include("conexion.php");
			
			
			if(isset($_POST["ingresar_tienda"])){
                $ruc=$_POST["ruc"];
                $clave=$_POST["contraseña"];
 
              if($con->query("SELECT * FROM libreria where libreria.RUC='$ruc' and libreria.clave='$clave'")){
                header('Location: perfil.html');
				
              }else{
                  echo "ingrese los datos correctos";
                  header('Location: index.html');
				                
              }
            }

            if(isset($_POST["ingresar_escritor"])){
                $nombrec=$_POST["nombre"];
                $clave=$_POST["contraseña"];
 
              if($con->query("SELECT * FROM autor where autor.nombre='$nombre' and autor.clave='$clave'")){
                header('Location: perfil.html');
				
              }else{
                  echo "ingrese los datos correctos";
                  header('Location: index.html');
				                
              }
            }

				
       ?>