function validar() {
	var usu, contra;

	usu = document.getElementById("usuario").value;
	contra = document.getElementById("contraseña").value;

	if(usu === "" || contra === "")
	{
		alert("Todos los campos son obligatorios");
	}
}