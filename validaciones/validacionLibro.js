function valirLibro(argument) 
{
   var titulo, idioma, descripcion, editorial, autor, precio;
   titulo = document.getElementById("titulo").value;
   idioma = document.getElementById("idioma").value;
   descripcion = document.getElementById("descripcion").value;
   editorial = document.getElementById("editorial").value;
   autor = document.getElementById("autor").value;
   precio = document.getElementById("precio").value;	

   if(titulo == "" || idioma == "" || descripcion == "" || editorial == "" || autor == "" || precio == "")
	{
		alert("Todos los campos son obligatorios");
		return false;
	}
}