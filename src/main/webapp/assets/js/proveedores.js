
		// Crear Proveedores
		function enviarPro() {
			
			var getUrl = window.location;
			var baseUrl = getUrl.protocol + "//" + getUrl.host + "/";
			
			var x = document.getElementById("nitproveedor").value;
			var y = document.getElementById("nombre_proveedor").value;
			console.log(x);
			console.log(y);
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', baseUrl+'//listarproveedores', false);
			req.send(null);
			var proveedores = null;
			if (req.status == 200)
				proveedores = JSON.parse(req.responseText);
			console.log(JSON.parse(req.responseText));

			for (i = 0; i < proveedores.length; i++) {
				console.log(proveedores[i].nitproveedor);
				console.log(proveedores[i].nombre_proveedor);
				if (proveedores[i].nitproveedor == x) {
					console.log(proveedores[i].nitproveedor + " " + x);
					coincidencia = true
					break;
				}
				
				if (proveedores[i].nombre_proveedor === y) {
					console.log(proveedores[i].nombre_proveedor + " " + y);
					coincidencia = true
					break;
				}

			}
			console.log(coincidencia);

			if (coincidencia == false) {
				var formData = new FormData();
				formData.append("nitproveedor", document
						.getElementById("nitproveedor").value);
				formData.append("ciudad_proveedor", document
						.getElementById("ciudad_proveedor").value);
				formData.append("direccion_proveedor", document
						.getElementById("direccion_proveedor").value);
				formData.append("nombre_proveedor",
						document.getElementById("nombre_proveedor").value);
				formData.append("telefono_proveedor",
						document.getElementById("telefono_proveedor").value);
				var xhr = new XMLHttpRequest();
				xhr.open('POST', baseUrl+'//registrarproveedor');

				var element = document.getElementById("errorCreaPro");
				element.classList.add("d-none");
				var element2 = document.getElementById("okCreaPro");
				element2.classList.remove("d-none");

				document.getElementById("nitproveedor").value = "";
				document.getElementById("ciudad_proveedor").value = "";
				document.getElementById("direccion_proveedor").value = "";
				document.getElementById("nombre_proveedor").value = "";
				document.getElementById("telefono_proveedor").value = "";
				xhr.send(formData);

			} else {
				var element = document.getElementById("errorCreaPro");
				element.classList.remove("d-none");
				var element2 = document.getElementById("okCreaPro");
				element2.classList.add("d-none");
				document.getElementById("nitproveedor").value = "";
				document.getElementById("ciudad_proveedor").value = "";
				document.getElementById("direccion_proveedor").value = "";
				document.getElementById("nombre_proveedor").value = "";
				document.getElementById("telefono_proveedor").value = "";
			}
		}

		// Oculta mensajes de error
		function ocultaerrorCrearPro() {

			var element = document.getElementById("errorCreaPro");
			element.classList.add("d-none");
			var element2 = document.getElementById("okCreaPro");
			element2.classList.add("d-none");
		}

		// Listar Proveedores
		
		
		function loadproveedores() {
			
			var getUrl = window.location;
			var baseUrl = getUrl.protocol + "//" + getUrl.host + "/";
			var baseurl3 = baseUrl+'//listarproveedores';
			
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.open("GET", baseurl3, true);
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
					var proveedores = JSON.parse(xmlhttp.responseText);
					console.log(proveedores);
					var tbltop = "<table class='table table-striped'><thead><tr><th scope='col'>NIT Proveedor</th><th scope='col'>Ciudad</th><th scope='col'>Direcci&oacute;n</th><th scope='col'>Nombre</th><th scope='col'>Tel&eacute;fono</th></tr></thead><tbody>";
					var main = "";
					for (i = 0; i < proveedores.length; i++) {
						main += "<tr><td>" + proveedores[i].nitproveedor
								+ "</td><td>" + proveedores[i].ciudad_proveedor
								+ "</td><td>" + proveedores[i].direccion_proveedor
								+ "</td><td>" + proveedores[i].nombre_proveedor
								+ "</td><td>" + proveedores[i].telefono_proveedor
								+ "</td></tr>";
					}
					var tblbottom = "</tbody></table>";
					var tbl = tbltop + main + tblbottom;
					document.getElementById("proveedoresinfo").innerHTML = tbl;
				}
			};
			xmlhttp.send();
		}

		// Consultar Proveedor x NIT		
		function consultarProveedor() {
			
				var getUrl = window.location;
				var baseUrl = getUrl.protocol + "//" + getUrl.host + "/";
				
				var req = new XMLHttpRequest();
				var coincidencia = false;
				var nitproveedorA = document.getElementById("nitproveedorA").value;
				req.open('GET', baseUrl+'//consultarproveedor?nitproveedor='+nitproveedorA, false);
				req.send(null);
				var proveedorA = null;
				if (req.status == 200)
					proveedorA = JSON.parse(req.responseText);
				console.log(JSON.parse(req.responseText));
				
				console.log(proveedorA.toString());
				
			if (proveedorA.toString()!=""){
				
				document.getElementById("ciudad_proveedorA").value = proveedorA[0].ciudad_proveedor;
				document.getElementById("direccion_proveedorA").value = proveedorA[0].direccion_proveedor;
				document.getElementById("nombre_proveedorA").value = proveedorA[0].nombre_proveedor;
				document.getElementById("telefono_proveedorA").value = proveedorA[0].telefono_proveedor;
				
				var element4 = document.getElementById("errorC");
				element4.classList.add("d-none");
				var element5 = document.getElementById("btnA");
				element5.classList.remove("d-none");
				

			} else {
				var element4 = document.getElementById("errorC");
				element4.classList.remove("d-none");
				var element5 = document.getElementById("btnA");
				element5.classList.add("d-none");
				
				document.getElementById("ciudad_proveedorA").value = "";
				document.getElementById("direccion_proveedorA").value = "";
				document.getElementById("nombre_proveedorA").value = "";
				document.getElementById("telefono_proveedorA").value = "";
			}
		}

		// Actualizar Proveedor
		function actualizarProveedor() {
			
			var getUrl = window.location;
			var baseUrl = getUrl.protocol + "//" + getUrl.host + "/";
			
			var x = document.getElementById("nitproveedorA").value;
			
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', baseUrl+'//listarproveedores', false);
			req.send(null);
			var proveedoresA = null;
			if (req.status == 200)
				proveedoresA = JSON.parse(req.responseText);
				console.log(JSON.parse(req.responseText));

			
				var formData = new FormData();
				formData.append("nitproveedor", document
						.getElementById("nitproveedorA").value);
				formData.append("ciudad_proveedor", document
						.getElementById("ciudad_proveedorA").value);
				formData.append("direccion_proveedor", document
						.getElementById("direccion_proveedorA").value);
				formData.append("nombre_proveedor",
						document.getElementById("nombre_proveedorA").value);
				formData.append("telefono_proveedor",
						document.getElementById("telefono_proveedorA").value);
				var xhr = new XMLHttpRequest();
				xhr.open('PUT', baseUrl+'//actualizarproveedor');

				var element7 = document.getElementById("errorCreaA");
				element7.classList.add("d-none");
				var element8 = document.getElementById("okCreaA");
				element8.classList.remove("d-none");
				var element9 = document.getElementById("btnA");
				element9.classList.add("d-none");

				document.getElementById("nitproveedorA").value = "";
				document.getElementById("ciudad_proveedorA").value = "";
				document.getElementById("direccion_proveedorA").value = "";
				document.getElementById("nombre_proveedorA").value = "";
				document.getElementById("telefono_proveedorA").value = "";
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
		
		// Borrar - Listar Proveedores para Borrar
		
		function loadproveedoresBorrar() {
			
			var getUrl = window.location;
			var baseUrl = getUrl.protocol + "//" + getUrl.host + "/";
			var baseurlE = baseUrl+'//listarproveedores';
			
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.open('GET', baseurlE, true);
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
					var proveedoresE = JSON.parse(xmlhttp.responseText);
					var tbltop = "<table class='table table-striped'><thead><tr><th scope='col'>NIT Proveedor</th><th scope='col'>Ciudad</th><th scope='col'>Direcci&oacute;n</th><th scope='col'>Nombre</th><th scope='col'>Tel&eacute;fono</th><th scope='col'>Borrar</th></tr></thead><tbody>";
					var main = "";
					for (i = 0; i < proveedoresE.length; i++) {
						main += "<tr><td>" + proveedoresE[i].nitproveedor
								+ "</td><td>" + proveedoresE[i].ciudad_proveedor
								+ "</td><td>" + proveedoresE[i].direccion_proveedor
								+ "</td><td>" + proveedoresE[i].nombre_proveedor
								+ "</td><td>" + proveedoresE[i].telefono_proveedor
								+ "</td><td><button type='button' class='btn btn-danger btn-uniform btn-round' id='"+ proveedoresE[i].nitproveedor +"' onclick='eliminarproveedor("+ proveedoresE[i].nitproveedor +")' data-toggle='modal' data-target='#ModalEliminar'><i class='icon-trash icon-large'></i></button>"
								+ "</td></tr>";
					}
					var tblbottom = "</tbody></table>";
					var tbl = tbltop + main + tblbottom;
					document.getElementById("proveedoresinfoBorrar").innerHTML = tbl;
				}
			};
			xmlhttp.send();
		}
		
		
		//Eliminar Proveedor
		function eliminarproveedor(id) {
			
			var getUrl = window.location;
			var baseUrl = getUrl.protocol + "//" + getUrl.host + "/";
			
			//var y = document.getElementById("nitproveedor").value;
			var y = id;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', baseUrl+'//listarproveedores', false);
			req.send(null);
			var proveedoresE = null;
			if (req.status == 200)
				proveedoresE = JSON.parse(req.responseText);
			console.log(JSON.parse(req.responseText));

			for (i = 0; i < proveedoresE.length; i++) {
				
				console.log(proveedoresE[i].nitproveedor);
				if (proveedoresE[i].nitproveedor == y) {
					console.log(proveedoresE[i].nitproveedor + " " + y);
					coincidencia = true
					break;
				}
			}
			console.log(coincidencia);

			if (coincidencia != false) {
				//var nitproveedor=document.getElementById("nitproveedor").value;
				var nitproveedor = id;
				
				var xhr = new XMLHttpRequest();
				xhr.open('DELETE', baseUrl+'//eliminarproveedor?nitproveedor='+nitproveedor);
						
				xhr.send();

			} 
		}
