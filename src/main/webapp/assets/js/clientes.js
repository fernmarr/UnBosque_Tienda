
		// Crear Cliente
		function enviarCli() {
			
			var getUrl = window.location;
			var baseUrl = getUrl.protocol + "//" + getUrl.host + "/";
			
			var x = document.getElementById("cedula_cliente").value;
			var y = document.getElementById("email_cliente").value;
			console.log(x);
			console.log(y);
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', baseUrl+'//listarclientes', false);
			req.send(null);
			var clientes = null;
			if (req.status == 200)
				clientes = JSON.parse(req.responseText);
			console.log(JSON.parse(req.responseText));

			for (i = 0; i < clientes.length; i++) {
				console.log(clientes[i].cedula_cliente);
				console.log(clientes[i].email_cliente);
				if (clientes[i].cedula_cliente == x) {
					console.log(clientes[i].cedula_cliente + " " + x);
					coincidencia = true
					break;
				}
				
				if (clientes[i].email_cliente === y) {
					console.log(clientes[i].email_cliente + " " + y);
					coincidencia = true
					break;
				}

			}
			console.log(coincidencia);

			if (coincidencia == false) {
				var formData = new FormData();
				formData.append("cedula_cliente", document
						.getElementById("cedula_cliente").value);
				formData.append("nombre_cliente", document
						.getElementById("nombre_cliente").value);
				formData.append("direccion_cliente", document
						.getElementById("direccion_cliente").value);
				formData.append("telefono_cliente",
						document.getElementById("telefono_cliente").value);
				formData.append("email_cliente",
						document.getElementById("email_cliente").value);
				var xhr = new XMLHttpRequest();
				xhr.open("POST", "http://localhost:8080/registrarcliente");

				var element = document.getElementById("errorCreaCli");
				element.classList.add("d-none");
				var element2 = document.getElementById("okCreaCli");
				element2.classList.remove("d-none");

				document.getElementById("cedula_cliente").value = "";
				document.getElementById("nombre_cliente").value = "";
				document.getElementById("direccion_cliente").value = "";
				document.getElementById("telefono_cliente").value = "";
				document.getElementById("email_cliente").value = "";
				xhr.send(formData);

			} else {
				var element = document.getElementById("errorCreaCli");
				element.classList.remove("d-none");
				var element2 = document.getElementById("okCreaCli");
				element2.classList.add("d-none");
				document.getElementById("cedula_cliente").value = "";
				document.getElementById("nombre_cliente").value = "";
				document.getElementById("direccion_cliente").value = "";
				document.getElementById("telefono_cliente").value = "";
				document.getElementById("email_cliente").value = "";
			}
		}

		// Oculta mensajes de error
		function ocultaerrorCrearCli() {

			var element = document.getElementById("errorCreaCli");
			element.classList.add("d-none");
			var element2 = document.getElementById("okCreaCli");
			element2.classList.add("d-none");
		}

		// Listar Clientes
		
		function loadclientes() {
			
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
					var tbltop = "<table class='table table-striped table-dark'><thead><tr><th scope='col'>C&eacute;dula</th><th scope='col'>Nombre</th><th scope='col'>Direcci&oacute;n</th><th scope='col'>Tel&eacute;fono</th><th scope='col'>Email</th></tr></thead><tbody>";
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
					document.getElementById("clientesinfo").innerHTML = tbl;
				}
			};
			xmlhttp.send();
		}

		// Consultar Cliente x cédula		
		function consultarCliente() {

				var getUrl = window.location;
				var baseUrl = getUrl.protocol + "//" + getUrl.host + "/";
				
				var req = new XMLHttpRequest();
				var coincidencia = false;
				var cedula_clienteA = document.getElementById("cedula_clienteA").value;
				req.open('GET', baseUrl+'//consultarcliente?cedula_cliente='+cedula_clienteA, false);
				req.send(null);
				var clienteA = null;
				if (req.status == 200)
					clienteA = JSON.parse(req.responseText);
				console.log(JSON.parse(req.responseText));
				
				console.log(clienteA.toString());
				
			if (clienteA.toString()!=""){
				

				//document.getElementById("cedula_usuario").value = usuario[0].cedula_usuario;
				document.getElementById("nombre_clienteA").value = clienteA[0].nombre_cliente;
				document.getElementById("direccion_clienteA").value = clienteA[0].direccion_cliente;
				document.getElementById("telefono_clienteA").value = clienteA[0].telefono_cliente;
				document.getElementById("email_clienteA").value = clienteA[0].email_cliente;
				
				var element4 = document.getElementById("errorC");
				element4.classList.add("d-none");
				var element5 = document.getElementById("btnA");
				element5.classList.remove("d-none");
				
				//document.getElementById("usersearch").value = "";
			

			} else {
				var element4 = document.getElementById("errorC");
				element4.classList.remove("d-none");
				var element5 = document.getElementById("btnA");
				element5.classList.add("d-none");
				//document.getElementById("cedula_usuario").value = "";
				document.getElementById("nombre_clienteA").value = "";
				document.getElementById("direccion_clienteA").value = "";
				document.getElementById("telefono_clienteA").value = "";
				document.getElementById("email_clienteA").value = "";
			}
		}

		// Actualizar Cliente
		function actualizarCliente() {
			
			var getUrl = window.location;
			var baseUrl = getUrl.protocol + "//" + getUrl.host + "/";
			
			var x = document.getElementById("cedula_clienteA").value;
			//var y = document.getElementById("email_clienteA").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', baseUrl+'//listarclientes', false);
			req.send(null);
			var clientesA = null;
			if (req.status == 200)
				clientesA = JSON.parse(req.responseText);
			console.log(JSON.parse(req.responseText));

			
				var formData = new FormData();
				formData.append("cedula_cliente", document
						.getElementById("cedula_clienteA").value);
				formData.append("nombre_cliente", document
						.getElementById("nombre_clienteA").value);
				formData.append("direccion_cliente", document
						.getElementById("direccion_clienteA").value);
				formData.append("telefono_cliente",
						document.getElementById("telefono_clienteA").value);
				formData.append("email_cliente",
						document.getElementById("email_clienteA").value);
				var xhr = new XMLHttpRequest();
				xhr.open("PUT", baseUrl+'//actualizarCliente');

				var element7 = document.getElementById("errorCreaA");
				element7.classList.add("d-none");
				var element8 = document.getElementById("okCreaA");
				element8.classList.remove("d-none");
				var element9 = document.getElementById("btnA");
				element9.classList.add("d-none");

				document.getElementById("cedula_clienteA").value = "";
				document.getElementById("nombre_clienteA").value = "";
				document.getElementById("direccion_clienteA").value = "";
				document.getElementById("telefono_clienteA").value = "";
				document.getElementById("email_clienteA").value = "";
				xhr.send(formData);

			
		}
		
		// Ocultar mensajes de error al buscar y actualizar
		function ocultaerrorConsultar(){
			
			var element11 = document.getElementById("errorC");
			element11.classList.add("d-none");
			var element12 = document.getElementById("errorCreaA");
			element12.classList.add("d-none");
			var element13 = document.getElementById("okCreaA");
			element13.classList.add("d-none");
			var element14 = document.getElementById("btnA");
			element14.classList.add("d-none");
			
		}
		
		// Borrar - Listar Clientes para Borrar
		
		function loadclientesBorrar() {
			
			var getUrl = window.location;
			var baseUrl = getUrl.protocol + "//" + getUrl.host + "/";
			
			var baseurlE = baseUrl+'//listarclientes';
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.open("GET", baseurlE, true);
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
					var clientesE = JSON.parse(xmlhttp.responseText);
					var tbltop = "<table class='table table-striped table-dark'><thead><tr><th scope='col'>C&eacute;dula</th><th scope='col'>Nombre</th><th scope='col'>Direcci&oacute;n</th><th scope='col'>Tel&eacute;fono</th><th scope='col'>Email</th><th scope='col'>Borrar</th></tr></thead><tbody>";
					var main = "";
					for (i = 0; i < clientesE.length; i++) {
						main += "<tr><td>" + clientesE[i].cedula_cliente
								+ "</td><td>" + clientesE[i].nombre_cliente
								+ "</td><td>" + clientesE[i].direccion_cliente
								+ "</td><td>" + clientesE[i].telefono_cliente
								+ "</td><td>" + clientesE[i].email_cliente
								+ "</td><td><button type='button' class='btn btn-danger btn-uniform btn-round' id='"+ clientesE[i].cedula_cliente +"' onclick='eliminarcliente("+ clientesE[i].cedula_cliente +")' data-toggle='modal' data-target='#ModalEliminar'><i class='icon-trash icon-large'></i></button>"
								+ "</td></tr>";
					}
					var tblbottom = "</tbody></table>";
					var tbl = tbltop + main + tblbottom;
					document.getElementById("clientesinfoBorrar").innerHTML = tbl;
				}
			};
			xmlhttp.send();
		}
		
		
		//Eliminar Usuario
		function eliminarcliente(id) {
			
			var getUrl = window.location;
			var baseUrl = getUrl.protocol + "//" + getUrl.host + "/";
			
			//var y = document.getElementById("cedula_cliente").value;
			var y = id;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', baseUrl+'//listarclientes', false);
			req.send(null);
			var clientesE = null;
			if (req.status == 200)
				clientesE = JSON.parse(req.responseText);
			console.log(JSON.parse(req.responseText));

			for (i = 0; i < clientesE.length; i++) {
				
				console.log(clientesE[i].cedula_cliente);
				if (clientesE[i].cedula_cliente == y) {
					console.log(clientesE[i].cedula_cliente + " " + y);
					coincidencia = true
					break;
				}
			}
			console.log(coincidencia);

			if (coincidencia != false) {
				//var cedula=document.getElementById("cedula_usuario").value;
				var cedula_cliente = id;
				
				var xhr = new XMLHttpRequest();
				xhr.open("DELETE", baseUrl+'//eliminarcliente?cedula_cliente='+cedula_cliente);
						
				xhr.send();

			} 
		}
