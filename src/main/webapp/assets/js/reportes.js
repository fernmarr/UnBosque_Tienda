
		

// Listar usuarios
		
function reporteusuarios() {
	
	var getUrl = window.location;
	var baseUrl = getUrl.protocol + "//" + getUrl.host + "/";
	
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.open("GET", baseUrl+'//listarusuarios', true);
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
			var usuarios = JSON.parse(xmlhttp.responseText);
			var tbltop = "<table class='table rui-datatable table-striped table-bordered table-hover'><thead><tr><th scope='col'>C&eacute;dula</th><th scope='col'>Email</th><th scope='col'>Nombre</th><th scope='col'>Usuario</th></tr></thead><tbody>";
			var main = "";
			for (i = 0; i < usuarios.length; i++) {
				main += "<tr><td>" + usuarios[i].cedula_usuario
						+ "</td><td>" + usuarios[i].email_usuario
						+ "</td><td>" + usuarios[i].nombre_usuario
						+ "</td><td>" + usuarios[i].usuario
						+ "</td></tr>";
			}
			var tblbottom = "</tbody></table>";
			var tbl = tbltop + main + tblbottom;
			document.getElementById("listUserInfo").innerHTML = tbl;
		}
	};
	xmlhttp.send();
}


// Listar Clientes
		
function reporteclientes() {
	
	var getUrl = window.location;
	var baseUrl = getUrl.protocol + "//" + getUrl.host + "/";
	//var baseurl3 = baseUrl+'//listarclientes';
	console.log('esta es la URL:'+baseUrl);
	
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.open("GET", baseUrl+'//listarclientes', true);
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
			var clientes = JSON.parse(xmlhttp.responseText);
			console.log(clientes);
			var tbltop = "<table class='table rui-datatable table-striped table-bordered table-hover'><thead><tr><th scope='col'>C&eacute;dula</th><th scope='col'>Nombre</th><th scope='col'>Direcci&oacute;n</th><th scope='col'>Tel&eacute;fono</th><th scope='col'>Email</th></tr></thead><tbody>";
			var main = "";
			for (i = 0; i < clientes.length; i++) {
				main += "<tr><td>" + clientes[i].cedula_cliente
						+ "</td><td>" + clientes[i].nombre_cliente
						+ "</td><td>" + clientes[i].direccion_cliente
						+ "</td><td>" + clientes[i].telefono_cliente
						+ "</td><td>" + clientes[i].email_cliente
						+ "</td></tr>";
			}
			var tblbottom = "</tbody></table>";
			var tbl = tbltop + main + tblbottom;
			document.getElementById("listClientInfo").innerHTML = tbl;
		}
	};
	xmlhttp.send();
}


function reporteventas() {
	
	var getUrl = window.location;
	var baseUrl = getUrl.protocol + "//" + getUrl.host + "/";
	
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.open("GET", baseUrl+'//reporteventas', true);
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
			var ventas = JSON.parse(xmlhttp.responseText);
			var tbltop = "<table class='table rui-datatable table-striped table-bordered table-hover'><thead><tr><th scope='col'>C&eacute;dula</th><th scope='col'>Nombre</th><th scope='col'>Valor Total Ventas</th></tr></thead><tbody>";
			var main = "";
			for (i = 0; i < ventas.length; i++) {
				main += "<tr><td>" + ventas[i].cedula_cliente
						+ "</td><td>" + ventas[i].nombre_cliente
						+ "</td><td>" + ventas[i].valor_venta
						+ "</td></tr>";
			}
			var tblbottom = "</tbody></table>";
			var tbl = tbltop + main + tblbottom;
			document.getElementById("ventasUserInfo").innerHTML = tbl;
		}
	};
	xmlhttp.send();
	
	
	var xmlhttp2 = new XMLHttpRequest();
	xmlhttp2.open("GET", baseUrl+'//sumatotalventas', true);
	xmlhttp2.onreadystatechange = function() {
		if (xmlhttp2.readyState === 4 && xmlhttp2.status === 200) {
			var Tventas = JSON.parse(xmlhttp2.responseText);
			
			var main = "";
			for (i = 0; i < Tventas.length; i++) {
				main = Tventas[i].total_venta;
			}
			
			document.getElementById("valcompleto").value = main;
		}
	};
	xmlhttp2.send();
}
		
	