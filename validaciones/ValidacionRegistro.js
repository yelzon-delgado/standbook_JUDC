function validar()
{
	var nombre, direccion, telefono, contra, recontra;
	nombre = document.getElementById("nombre").value;
	direccion = document.getElementById("direccion").value;
	telefono = document.getElementById("telefono").value;
	contra = document.getElementById("contraseña").value;
	recontra = document.getElementById("re_contraseña").value;
    
	if(nombre == "" || direccion == "" || telefono == "" || contra == "" || recontra == "")
	{
		alert("Todos los campos son obligatorios");
		return false;
	}
<<<<<<< HEAD
      contra=md5(contra);
    	if(contra != recontra)
=======
     var cripto=btoa(contra);
	if(contra != recontra)
>>>>>>> 7567cadcf10bf2e768a68525ae2a3c12031397b1
	{
		alert("lo sentimos pero las contraseñas deben ser identicas");
		return nuevoregistro1.php;
	}


}

