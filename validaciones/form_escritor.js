function enviar() {
	var nombre = document.getElementById("nombre").value;
	var apellido = document.getElementById("apellido").value;
	var telefono = document.getElementById("telefono").value;
	var sexo = document.getElementById("sexo").value;
	var edad = document.getElementById("edad");
	var direccion = document.getElementById("direccion").value;
	var contraseña = document.getElementById("contraseña").value;
	var repetir = document.getElementById("repetir").value;

	if (nombre == "") {
		alert("faltan cmpos por llenar");
		return;
	}
	if (apellido == "") {
		alert("faltan cmpos por llenar");
		return;
	}
	if (telefono == "") {
		alert("faltan cmpos por llenar");
		return;
	}
	if (sexo == "") {
		alert("faltan cmpos por llenar");
		return;
	}
	if (edad == "" ) {
		alert("faltan cmpos por llenar");
		return;
	}
	if (direccion == "") {
		alert("faltan cmpos por llenar");
		return;
	}
	if (contraseña == "") {
		alert("faltan cmpos por llenar");
		return;
	}
	if (repetir == "") {
		alert("faltan cmpos por llenar");
		return;
	}

}