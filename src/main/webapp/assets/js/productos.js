
			//Cargar Productos
			function subirArchivo() {
	
				try {
	
					var csvFile = document.getElementById("archivo");
	
					var input = csvFile.files[0];
					var reader = new FileReader();
	
					reader.onload = function(e) {
	
						var text = e.target.result;
	
						var arrayLineas = text.split("\n");
	
						var xhr = new XMLHttpRequest();
						xhr.open("DELETE",
								"http://localhost:8080/eliminartodoproducto", true);
						xhr.send();
	
						for (var i = 0; i < arrayLineas.length; i += 1) {
							var arraydatos = arrayLineas[i].split(",");
	
							if (arrayLineas[i] == "") {
								continue;
							}
	
							for (var j = 0; j < arraydatos.length; j += 1) {
								console.log(i + " " + j + "->" + arraydatos[j]);
							}
	
							var formData = new FormData();
							formData.append("codigo_producto", arraydatos[0]);
							formData.append("nombre_producto", arraydatos[1]);
							formData.append("nitproveedor", arraydatos[2]);
							formData.append("precio_compra", arraydatos[3]);
							formData.append("ivacompra", arraydatos[4]);
							formData.append("precio_venta", arraydatos[5]);
							var xhr = new XMLHttpRequest();
							xhr.open("POST",
									"http://localhost:8080/registrarproducto");
	
							xhr.send(formData);
						}
	
						var element = document.getElementById("errorCargarProd");
						element.classList.add("d-none");
						var element2 = document.getElementById("okCargarProd");
						element2.classList.remove("d-none");
	
						document.getElementById("archivo").value = "";
	
					};
	
					reader.readAsText(input);
				} catch (error) {
					var element = document.getElementById("errorCargarProd");
					element.classList.remove("d-none");
					var element2 = document.getElementById("okCargarProd");
					element2.classList.add("d-none");
	
					document.getElementById("archivo").value = "";
				}
			}
		
		
		
		// Crear Productos
		function enviarProd() {
			var x = document.getElementById("codigo_producto").value;
			var y = document.getElementById("nombre_producto").value;
			console.log(x);
			console.log(y);
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', 'http://localhost:8080/listarproductos', false);
			req.send(null);
			var productos = null;
			if (req.status == 200)
				productos = JSON.parse(req.responseText);
			console.log(JSON.parse(req.responseText));

			for (i = 0; i < productos.length; i++) {
				console.log(productos[i].codigo_producto);
				console.log(productos[i].nombre_producto);
				if (productos[i].codigo_producto == x) {
					console.log(productos[i].codigo_producto + " " + x);
					coincidencia = true
					break;
				}
				
				if (productos[i].nombre_producto === y) {
					console.log(productos[i].nombre_producto + " " + y);
					coincidencia = true
					break;
				}

			}
			console.log(coincidencia);

			if (coincidencia == false) {
				var formData = new FormData();
				formData.append("codigo_producto", document
						.getElementById("codigo_producto").value);
				formData.append("ivacompra", document
						.getElementById("ivacompra").value);
				formData.append("nitproveedor", document
						.getElementById("nitproveedor").value);
				formData.append("nombre_producto",
						document.getElementById("nombre_producto").value);
				formData.append("precio_compra",
						document.getElementById("precio_compra").value);
				formData.append("precio_venta",
						document.getElementById("precio_venta").value);
				var xhr = new XMLHttpRequest();
				xhr.open("POST", "http://localhost:8080/registrarproducto");

				var element = document.getElementById("errorCreaProd");
				element.classList.add("d-none");
				var element2 = document.getElementById("okCreaProd");
				element2.classList.remove("d-none");

				document.getElementById("codigo_producto").value = "";
				document.getElementById("ivacompra").value = "";
				document.getElementById("nitproveedor").value = "";
				document.getElementById("nombre_producto").value = "";
				document.getElementById("precio_compra").value = "";
				document.getElementById("precio_venta").value = "";
				xhr.send(formData);

			} else {
				var element = document.getElementById("errorCreaPro");
				element.classList.remove("d-none");
				var element2 = document.getElementById("okCreaPro");
				element2.classList.add("d-none");
				document.getElementById("codigo_producto").value = "";
				document.getElementById("ivacompra").value = "";
				document.getElementById("nitproveedor").value = "";
				document.getElementById("nombre_producto").value = "";
				document.getElementById("precio_compra").value = "";
				document.getElementById("precio_venta").value = "";
			}
		}

		// Oculta mensajes de error
		function ocultaerrorCrearProd() {

			var element = document.getElementById("errorCreaProd");
			element.classList.add("d-none");
			var element2 = document.getElementById("okCreaProd");
			element2.classList.add("d-none");
		}

		// Listar Productos
		var baseurl3 = "http://localhost:8080/listarproductos";
		console.log(baseurl3);
		function loadproductos() {
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.open("GET", baseurl3, true);
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
					var productos = JSON.parse(xmlhttp.responseText);
					console.log(productos);
					var tbltop = "<table class='table table-striped table-dark'><thead><tr><th scope='col'>C&oacute;digo Producto</th><th scope='col'>IVA Compra</th><th scope='col'>NIT Proveedor</th><th scope='col'>Nombre Producto</th><th scope='col'>Precio Compra</th><th scope='col'>Precio Venta</th></tr></thead><tbody>";
					var main = "";
					for (i = 0; i < productos.length; i++) {
						main += "<tr><td>" + productos[i].codigo_producto
								+ "</td><td>" + productos[i].ivacompra
								+ "</td><td>" + productos[i].nitproveedor
								+ "</td><td>" + productos[i].nombre_producto
								+ "</td><td>" + productos[i].precio_compra
								+ "</td><td>" + productos[i].precio_venta
								+ "</td></tr>";
					}
					var tblbottom = "</tbody></table>";
					var tbl = tbltop + main + tblbottom;
					document.getElementById("productosinfo").innerHTML = tbl;
				}
			};
			xmlhttp.send();
		}

		// Consultar Productos por x codigo_producto		
		function consultarProducto() {

				
				var req = new XMLHttpRequest();
				var coincidencia = false;
				var codigo_productoA = document.getElementById("codigo_productoA").value;
				req.open('GET', 'http://localhost:8080/consultarproducto?codigo_producto='+codigo_productoA, false);
				req.send(null);
				var productoA = null;
				if (req.status == 200)
					productoA = JSON.parse(req.responseText);
				console.log(JSON.parse(req.responseText));
				
				console.log(productoA.toString());
				
			if (productoA.toString()!=""){
				
				document.getElementById("ivacompraA").value = productoA[0].ivacompra;
				document.getElementById("nitproveedorA").value = productoA[0].nitproveedor;
				document.getElementById("nombre_productoA").value = productoA[0].nombre_producto;
				document.getElementById("precio_compraA").value = productoA[0].precio_compra;
				document.getElementById("precio_ventaA").value = productoA[0].precio_venta;
				
				var element4 = document.getElementById("errorCreaA");
				element4.classList.add("d-none");
				var element5 = document.getElementById("btnA");
				element5.classList.remove("d-none");
				

			} else {
				var element4 = document.getElementById("errorCreaA");
				element4.classList.remove("d-none");
				var element5 = document.getElementById("btnA");
				element5.classList.add("d-none");
				
				document.getElementById("ivacompraA").value = "";
				document.getElementById("nitproveedorA").value = "";
				document.getElementById("nombre_productoA").value = "";
				document.getElementById("precio_compraA").value = "";
				document.getElementById("precio_ventaA").value = "";
			}
		}

		// Actualizar Producto
		function actualizarProducto() {
			var x = document.getElementById("codigo_productoA").value;
			//var y = document.getElementById("nombre_productoA").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', 'http://localhost:8080/listarproductos', false);
			req.send(null);
			var productosA = null;
			if (req.status == 200)
				productosA = JSON.parse(req.responseText);
			console.log(JSON.parse(req.responseText));

			for (i = 0; i < productosA.length; i++) {
				console.log(productosA[i].codigo_producto);
				
				if (productosA[i].codigo_producto === x) {
					console.log(productosA[i].codigo_producto + " " + x);
					coincidencia = true
					break;
				}
				
				/*if (productosA[i].nombre_producto === y) {
					console.log(productosA[i].nombre_producto + " " + y);
					coincidencia = true
					break;
				}*/
			}
			console.log(coincidencia);

			if (coincidencia != false) {
				var formData = new FormData();
				formData.append("codigo_producto", document
						.getElementById("codigo_productoA").value);
				formData.append("ivacompra", document
						.getElementById("ivacompraA").value);
				formData.append("nitproveedor", document
						.getElementById("nitproveedorA").value);
				formData.append("nombre_producto",
						document.getElementById("nombre_productoA").value);
				formData.append("precio_compra",
						document.getElementById("precio_compraA").value);
				formData.append("precio_venta",
						document.getElementById("precio_ventaA").value);
				var xhr = new XMLHttpRequest();
				xhr.open("PUT", "http://localhost:8080/actualizarproducto");

				var element7 = document.getElementById("errorCreaA");
				element7.classList.add("d-none");
				var element8 = document.getElementById("okCreaA");
				element8.classList.remove("d-none");
				var element9 = document.getElementById("btnA");
				element9.classList.add("d-none");

				document.getElementById("codigo_productoA").value = "";
				document.getElementById("ivacompraA").value = "";
				document.getElementById("nitproveedorA").value = "";
				document.getElementById("nombre_productoA").value = "";
				document.getElementById("precio_compraA").value = "";
				document.getElementById("precio_ventaA").value = "";
				xhr.send(formData);

			} else {
				var element7 = document.getElementById("errorCreaA");
				element7.classList.remove("d-none");
				var element8 = document.getElementById("okCreaA");
				element8.classList.add("d-none");
				var element9 = document.getElementById("btnA");
				element9.classList.add("d-none");
				
				document.getElementById("codigo_productoA").value = "";
				document.getElementById("ivacompraA").value = "";
				document.getElementById("nitproveedorA").value = "";
				document.getElementById("nombre_productoA").value = "";
				document.getElementById("precio_compraA").value = "";
				document.getElementById("precio_ventaA").value = "";
			}
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
		
		// Borrar - Listar Productos para Borrar
		var baseurlE = "http://localhost:8080/listarproductos";
		function loadproductosBorrar() {
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.open("GET", baseurlE, true);
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
					var productosE = JSON.parse(xmlhttp.responseText);
					var tbltop = "<table class='table table-striped table-dark'><thead><tr><th scope='col'>C&oacute;digo Producto</th><th scope='col'>IVA Compra</th><th scope='col'>NIT Proveedor</th><th scope='col'>Nombre Producto</th><th scope='col'>Precio Compra</th><th scope='col'>Precio Venta</th><th scope='col'>Borrar</th></tr></thead><tbody>";
					var main = "";
					for (i = 0; i < productosE.length; i++) {
						main += "<tr><td>" + productosE[i].codigo_producto
								+ "</td><td>" + productosE[i].ivacompra
								+ "</td><td>" + productosE[i].nitproveedor
								+ "</td><td>" + productosE[i].nombre_producto
								+ "</td><td>" + productosE[i].precio_compra
								+ "</td><td>" + productosE[i].precio_venta
								+ "</td><td><button type='button' class='btn btn-danger btn-uniform btn-round' id='"+ productosE[i].codigo_producto +"' onclick='eliminarproducto("+ productosE[i].codigo_producto +")' data-toggle='modal' data-target='#ModalEliminar'><i class='icon-trash icon-large'></i></button>"
								+ "</td></tr>";
					}
					var tblbottom = "</tbody></table>";
					var tbl = tbltop + main + tblbottom;
					document.getElementById("productosinfoBorrar").innerHTML = tbl;
				}
			};
			xmlhttp.send();
		}
		
		
		//Eliminar Producto
		function eliminarproducto(id) {
			//var y = document.getElementById("nitproveedor").value;
			var y = id;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', 'http://localhost:8080/listarproductos', false);
			req.send(null);
			var productosE = null;
			if (req.status == 200)
				productosE = JSON.parse(req.responseText);
			console.log(JSON.parse(req.responseText));

			for (i = 0; i < productosE.length; i++) {
				
				console.log(productosE[i].codigo_producto);
				if (productosE[i].codigo_producto == y) {
					console.log(productosE[i].codigo_producto + " " + y);
					coincidencia = true
					break;
				}
			}
			console.log(coincidencia);

			if (coincidencia != false) {
				//var codigo_producto=document.getElementById("codigo_producto").value;
				var codigo_producto = id;
				
				var xhr = new XMLHttpRequest();
				xhr.open("DELETE", "http://localhost:8080/eliminarproducto?codigo_producto="+codigo_producto);
						
				xhr.send();

			} 
		}
