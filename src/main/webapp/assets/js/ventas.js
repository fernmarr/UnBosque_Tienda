
function traerNombreCliente() {

	var getUrl = window.location;
	var baseUrl = getUrl.protocol + "//" + getUrl.host + "/";

	var client = document.getElementById("cedula_cliente").value;
	var req = new XMLHttpRequest();

	req.open('GET', baseUrl + '//consultarcliente?cedula_cliente=' + client, false);
	req.send(null);
	var cliente = null;
	if (req.status == 200)
		cliente = JSON.parse(req.responseText);
	console.log('cliente:' + cliente);


	if (cliente.toString() != "") {

		document.getElementById("nombre_cliente").value = cliente[0].nombre_cliente;
		var element2 = document.getElementById("paso2");
		element2.classList.remove("d-none");

	} else {

		document.getElementById("nombre_cliente").value = "No Existe el Cliente";

	}
}

function limpiarCliente() {
	document.getElementById("cedula_cliente").value = "";
	document.getElementById("nombre_cliente").value = "";
	document.getElementById('form_venta').reset();
	var element2 = document.getElementById("paso2");
	element2.classList.add("d-none");
	var element2 = document.getElementById("paso3");
	element2.classList.add("d-none");
	var element2 = document.getElementById("paso4");
	element2.classList.add("d-none");
	paso1();
}

function traerNombreUsuario() {

	var getUrl = window.location;
	var baseUrl = getUrl.protocol + "//" + getUrl.host + "/";

	var user = document.getElementById("cedula_usuario").value;
	var req = new XMLHttpRequest();

	req.open('GET', baseUrl + '//consultarusuario?cedula_usuario='  + user, false);
	req.send(null);
	var usuario = null;
	if (req.status == 200)
		usuario = JSON.parse(req.responseText);
	console.log(usuario);

	if (usuario.toString() != "") {

		document.getElementById("nombre_usuario").value = usuario[0].nombre_usuario;
		var element2 = document.getElementById("paso3");
		element2.classList.remove("d-none");

	} else {
		document.getElementById("nombre_usuario").value = "No Existe el Usuario";

	}
}

function limpiarUsuario() {
	document.getElementById("cedula_usuario").value = "";
	document.getElementById("nombre_usuario").value = "";
	var element2 = document.getElementById("paso3");
	element2.classList.add("d-none");
}


var precio1 = 0.0;



function cargarProducto1() {

	document.getElementById("cant1").required = true;

	var getUrl = window.location;
	var baseUrl = getUrl.protocol + "//" + getUrl.host + "/";

	var prod1 = document.getElementById("codigo_producto1").value;
	var req = new XMLHttpRequest();

	req.open('GET', baseUrl + '//consultarproducto?codigo_producto=' + prod1, false);
	req.send(null);
	var producto1 = null;
	if (req.status == 200)
		producto1 = JSON.parse(req.responseText);


	if (producto1.toString() != "") {

		console.log(producto1);
		document.getElementById("nombre_producto1").value = producto1[0].nombre_producto;
		precio1 = parseFloat(producto1[0].precio_venta);
		console.log("Precio1: " + precio1)

	} else {
		document.getElementById("nombre_producto1").value = "Producto no Existe";
	}

}

function limpiarProducto1() {
	document.getElementById("codigo_producto1").value = "";
	document.getElementById("nombre_producto1").value = "";
	document.getElementById("cant1").value = "";
	document.getElementById("valtotal1").value = 0;
	document.getElementById("cant1").required = false;
}


var precio2 = 0.0;

function cargarProducto2() {

	document.getElementById("cant2").required = true;

	var getUrl = window.location;
	var baseUrl = getUrl.protocol + "//" + getUrl.host + "/";

	var prod2 = document.getElementById("codigo_producto2").value;
	var req = new XMLHttpRequest();

	req.open('GET', baseUrl + '//consultarproducto?codigo_producto=' + prod2, false);
	req.send(null);
	var producto2 = null;
	if (req.status == 200)
		producto2 = JSON.parse(req.responseText);


	if (producto2.toString() != "") {

		console.log(producto2);
		document.getElementById("nombre_producto2").value = producto2[0].nombre_producto;
		precio2 = parseFloat(producto2[0].precio_venta);
		console.log("Precio2: " + precio2)


	} else {
		document.getElementById("nombre_producto2").value = "Producto no Existe";
	}
}

function limpiarProducto2() {
	document.getElementById("codigo_producto2").value = "";
	document.getElementById("nombre_producto2").value = "";
	document.getElementById("cant2").value = "";
	document.getElementById("valtotal2").value = 0;
	document.getElementById("cant2").required = false;
}

var precio3 = 0.0;

function cargarProducto3() {

	document.getElementById("cant3").required = true;

	var getUrl = window.location;
	var baseUrl = getUrl.protocol + "//" + getUrl.host + "/";

	var prod3 = document.getElementById("codigo_producto3").value;
	var req = new XMLHttpRequest();

	req.open('GET', baseUrl + '//consultarproducto?codigo_producto=' + prod3, false);
	req.send(null);
	var producto3 = null;
	if (req.status == 200)
		producto3 = JSON.parse(req.responseText);


	if (producto3.toString() != "") {

		console.log(producto3);
		document.getElementById("nombre_producto3").value = producto3[0].nombre_producto;
		precio3 = parseFloat(producto3[0].precio_venta);
		console.log("Precio3: " + precio3)


	} else {
		document.getElementById("nombre_producto3").value = "Producto no Existe";
	}
}

function limpiarProducto3() {
	document.getElementById("codigo_producto3").value = "";
	document.getElementById("nombre_producto3").value = "";
	document.getElementById("cant3").value = "";
	document.getElementById("valtotal3").value = 0;
	document.getElementById("cant3").required = false;
}


function calcularPrecio1() {



	var cantidad = document.getElementById("cant1").value;
	var valortotal = 0.0;
	if (cantidad == "" || cantidad == null) {
		document.getElementById("valtotal1").value = 0;
	} else {
		cargarProducto1();
		valortotal = parseFloat(cantidad) * precio1;
		console.log("Valor 1: " + valortotal);
		document.getElementById("valtotal1").value = valortotal;
		var element2 = document.getElementById("paso4");
		element2.classList.remove("d-none");
		
	}
	calcularFinales();

}

function calcularPrecio2() {

	var cantidad = document.getElementById("cant2").value;
	var valortotal = 0.0;
	if (cantidad == "" || cantidad == null) {
		document.getElementById("valtotal2").value = 0;
	} else {
		cargarProducto2();
		valortotal = parseFloat(cantidad) * precio2;
		console.log("Valor 2: " + valortotal);
		document.getElementById("valtotal2").value = valortotal;
	}
	calcularFinales();

}

function calcularPrecio3() {

	var cantidad = document.getElementById("cant3").value;
	var valortotal = 0.0;
	if (cantidad == "" || cantidad == null) {
		document.getElementById("valtotal3").value = 0;
	} else {
		cargarProducto3();
		valortotal = parseFloat(cantidad) * precio3;
		console.log("Valor 3: " + valortotal);
		document.getElementById("valtotal3").value = valortotal;
	}
	calcularFinales();

}

function calcularFinales() {

	var val1 = document.getElementById("valtotal1").value;
	var val2 = document.getElementById("valtotal2").value;
	var val3 = document.getElementById("valtotal3").value;
	totalventa = parseFloat(val1) + parseFloat(val2) + parseFloat(val3);
	document.getElementById("total_venta").value = totalventa;

	var iva = Math.round(totalventa * 0.19);
	document.getElementById("total_iva").value = iva;

	document.getElementById("total_venta_iva").value = iva + totalventa;
}

function consecutivoVenta() {

	var getUrl = window.location;
	var baseUrl = getUrl.protocol + "//" + getUrl.host + "/";

	var req = new XMLHttpRequest();
	req.open('GET', baseUrl + '//contadorventa', false);
	req.send(null);
	var cont = null;
	if (req.status == 200)
		cont = JSON.parse(req.responseText);
	console.log(cont.toString());
	document.getElementById("consecutivo").value = cont;

}


function registrar() {

	var getUrl = window.location;
	var baseUrl = getUrl.protocol + "//" + getUrl.host + "/";

	try {

		formData = new FormData();
		formData.append("codigo_venta", document
			.getElementById("consecutivo").value);
		formData.append("cedula_cliente", document
			.getElementById("cedula_cliente").value);
		formData.append("cedula_usuario", document
			.getElementById("cedula_usuario").value);
		formData.append("ivaventa", document
			.getElementById("total_iva").value);
		formData.append("total_venta", document
			.getElementById("total_venta").value);
		formData.append("valor_venta", document
			.getElementById("total_venta_iva").value);
		var xhr = new XMLHttpRequest();
		xhr.open('POST', baseUrl + '//registrarventa');
		xhr.send(formData);


	} catch (error) {

		var element = document.getElementById("errorCrearVenta");
		element.classList.remove("d-none");
		var element2 = document.getElementById("okCrearVenta");
		element2.classList.add("d-none");
	}

	setTimeout(function() {
		try {

			for (i = 1; i < 4; i++) {
				
				var temp = "valtotal"+i;
				
				var actual = document.getElementById(temp).value;
				console.log("el valor de actual es:" + actual);
				if (actual == 0) {
					continue;
				} else {
					var formData2 = new FormData();

					formData2.append("cantidad_producto", document.getElementById("cant" + i.toString()).value);
					formData2.append("codigo_producto", document.getElementById("codigo_producto" + i.toString()).value);
					formData2.append("codigo_venta", document.getElementById("consecutivo").value);
					formData2.append("valor_total", document.getElementById("valtotal" + i.toString()).value);
					formData2.append("valor_venta", document.getElementById("total_venta").value);
					formData2.append("valoriva", document.getElementById("total_venta_iva").value);

					var xhr2 = new XMLHttpRequest();
					xhr2.open('POST', baseUrl + '//registrardetalleventa');
					xhr2.send(formData2);
				}
				
				
			}

			var element = document.getElementById("errorCrearVenta");
			element.classList.add("d-none");
			var element2 = document.getElementById("okCrearVenta");
			element2.classList.remove("d-none");
			document.getElementById('form_venta').reset();
			var element3 = document.getElementById("form_venta");
			element3.classList.add("d-none");
			
			var element2 = document.getElementById("paso2");
			element2.classList.add("d-none");
			var element2 = document.getElementById("paso3");
			element2.classList.add("d-none");
			var element2 = document.getElementById("paso4");
			element2.classList.add("d-none");


		} catch (error) {

			var element = document.getElementById("errorCrearVenta");
			element.classList.remove("d-none");
			var element2 = document.getElementById("okCrearVenta");
			element2.classList.add("d-none");
			document.getElementById('form_venta').reset();
			var element3 = document.getElementById("form_venta");
			element3.classList.add("d-none");
			var element2 = document.getElementById("paso2");
			element2.classList.add("d-none");
			var element2 = document.getElementById("paso3");
			element2.classList.add("d-none");
			var element2 = document.getElementById("paso4");
			element2.classList.add("d-none");

		}

	}, 2000);

}

function cancelar(){
	document.getElementById('form_venta').reset();
	var element3 = document.getElementById("form_venta");
	element3.classList.add("d-none");
	var element3 = document.getElementById("paso2");
	element3.classList.add("d-none");
	var element3 = document.getElementById("paso3");
	element3.classList.add("d-none");
	var element3 = document.getElementById("paso4");
	element3.classList.add("d-none");
}

function paso1() {
	
	var element = document.getElementById("errorCrearVenta");
	element.classList.add("d-none");
	var element2 = document.getElementById("okCrearVenta");
	element2.classList.add("d-none");

	var element2 = document.getElementById("form_venta");
	element2.classList.remove("d-none");

	var getUrl = window.location;
	var baseUrl = getUrl.protocol + "//" + getUrl.host + "/";

	var req = new XMLHttpRequest();
	req.open('GET', baseUrl + '//contadorventa', false);
	req.send(null);
	var cont = null;
	if (req.status == 200)
		cont = JSON.parse(req.responseText);
	console.log(cont.toString());
	document.getElementById("consecutivo").value = cont;


}
