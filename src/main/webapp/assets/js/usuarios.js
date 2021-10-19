
		// Crear Usuario
		function enviar() {
			
			var getUrl = window.location;
			var baseUrl = getUrl.protocol + "//" + getUrl.host + "/";
			
			var x = document.getElementById("user").value;
			var y = document.getElementById("cedula_usuario").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', baseUrl+'//listarusuarios', false);
			req.send(null);
			var usuarios = null;
			if (req.status == 200)
				usuarios = JSON.parse(req.responseText);
			console.log(JSON.parse(req.responseText));

			for (i = 0; i < usuarios.length; i++) {
				console.log(usuarios[i].usuario);
				console.log(usuarios[i].cedula_usuario);
				if (usuarios[i].usuario === x) {
					console.log(usuarios[i].usuario + " " + x);
					coincidencia = true
					break;
				}

				if (usuarios[i].cedula_usuario == y) {
					console.log(usuarios[i].cedula_usuario + " " + y);
					coincidencia = true
					break;
				}
			}
			console.log(coincidencia);

			if (coincidencia == false) {
				var formData = new FormData();
				formData.append("cedula_usuario", document
						.getElementById("cedula_usuario").value);
				formData.append("email_usuario", document
						.getElementById("email_usuario").value);
				formData.append("nombre_usuario", document
						.getElementById("nombre_usuario").value);
				formData.append("password",
						document.getElementById("password").value);
				formData.append("usuario",
						document.getElementById("user").value);
				var xhr = new XMLHttpRequest();
				xhr.open("POST", baseUrl+'//registrarusuario');

				var element = document.getElementById("errorCrea");
				element.classList.add("d-none");
				var element2 = document.getElementById("okCrea");
				element2.classList.remove("d-none");

				document.getElementById("cedula_usuario").value = "";
				document.getElementById("email_usuario").value = "";
				document.getElementById("nombre_usuario").value = "";
				document.getElementById("password").value = "";
				document.getElementById("user").value = "";
				xhr.send(formData);

			} else {
				var element = document.getElementById("errorCrea");
				element.classList.remove("d-none");
				var element2 = document.getElementById("okCrea");
				element2.classList.add("d-none");
				document.getElementById("cedula_usuario").value = "";
				document.getElementById("email_usuario").value = "";
				document.getElementById("nombre_usuario").value = "";
				document.getElementById("password").value = "";
				document.getElementById("user").value = "";
			}
		}
		
		// Oculta mensajes de error al Crear
		function ocultaerrorCrear(){
			
			var element = document.getElementById("errorCrea");
			element.classList.add("d-none");
			var element2 = document.getElementById("okCrea");
			element2.classList.add("d-none");
		}
		
		

		// Listar usuarios
		
		function loadusuarios() {
			
			var getUrl = window.location;
			var baseUrl = getUrl.protocol + "//" + getUrl.host + "/";
			
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.open("GET", baseUrl+'//listarusuarios', true);
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
					var usuarios = JSON.parse(xmlhttp.responseText);
					var tbltop = "<table class='table table-hover'><thead><tr><th scope='col'>C&eacute;dula</th><th scope='col'>Email</th><th scope='col'>Nombre</th><th scope='col'>Usuario</th></tr></thead><tbody>";
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
					document.getElementById("usuariosinfo").innerHTML = tbl;
				}
			};
			xmlhttp.send();
		}
		
		// Consultar usuario x cédula		
		function consultarUsuario() {
			
				var getUrl = window.location;
				var baseUrl = getUrl.protocol + "//" + getUrl.host + "/";
				
				var req = new XMLHttpRequest();
				var coincidencia = false;
				var cedula_usuarioA=   document.getElementById("cedula_usuarioA").value;
				req.open('GET', baseUrl+'//consultarusuario?cedula_usuario='+cedula_usuarioA, false);
				req.send(null);
				var usuario = null;
				if (req.status == 200)
					usuario = JSON.parse(req.responseText);
				console.log(JSON.parse(req.responseText));
				
				console.log(usuario.toString());
				
			if (usuario.toString()!=""){
				

				//document.getElementById("cedula_usuario").value = usuario[0].cedula_usuario;
				document.getElementById("email_usuarioA").value = usuario[0].email_usuario;
				document.getElementById("nombre_usuarioA").value = usuario[0].nombre_usuario;
				document.getElementById("passwordA").value = usuario[0].password;
				document.getElementById("usuarioA").value = usuario[0].usuario;
				
				var element = document.getElementById("errorC");
				element.classList.add("d-none");
				var element2 = document.getElementById("btnA");
				element2.classList.remove("d-none");
				
				//document.getElementById("usersearch").value = "";
			

			} else {
				var element = document.getElementById("errorC");
				element.classList.remove("d-none");
				var element2 = document.getElementById("btnA");
				element2.classList.add("d-none");
				//document.getElementById("cedula_usuario").value = "";
				document.getElementById("email_usuarioA").value = "";
				document.getElementById("nombre_usuarioA").value = "";
				document.getElementById("passwordA").value = "";
				document.getElementById("usuarioA").value = "";
			}
		}

		// Actualizar Usuario
		function actualizarUsuario() {
			
			var getUrl = window.location;
			var baseUrl = getUrl.protocol + "//" + getUrl.host + "/";
			
			var x = document.getElementById("usuarioA").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', baseUrl+'//listarusuarios', false);
			req.send(null);
			var usuarios = null;
			if (req.status == 200)
				usuarios = JSON.parse(req.responseText);
			console.log(JSON.parse(req.responseText));

			
				var formData = new FormData();
				formData.append("cedula_usuario", document
						.getElementById("cedula_usuarioA").value);
				formData.append("email_usuario", document
						.getElementById("email_usuarioA").value);
				formData.append("nombre_usuario", document
						.getElementById("nombre_usuarioA").value);
				formData.append("password",
						document.getElementById("passwordA").value);
				formData.append("usuario",
						document.getElementById("usuarioA").value);
				var xhr = new XMLHttpRequest();
				xhr.open("PUT", baseUrl+'//actualizarusuarios');

				var element = document.getElementById("errorCreaA");
				element.classList.add("d-none");
				var element2 = document.getElementById("okCreaA");
				element2.classList.remove("d-none");
				var element3 = document.getElementById("btnA");
				element3.classList.add("d-none");

				document.getElementById("cedula_usuarioA").value = "";
				document.getElementById("email_usuarioA").value = "";
				document.getElementById("nombre_usuarioA").value = "";
				document.getElementById("passwordA").value = "";
				document.getElementById("usuarioA").value = "";
				xhr.send(formData);

			
		}
		
		// Ocultar mensajes de error al buscar y actualizar
		function ocultaerrorConsultar(){
			
			var element = document.getElementById("errorC");
			element.classList.add("d-none");
			var element = document.getElementById("errorCreaA");
			element.classList.add("d-none");
			var element = document.getElementById("okCreaA");
			element.classList.add("d-none");
			var element2 = document.getElementById("btnA");
			element2.classList.add("d-none");
			
		}
		
		
		// Borrar - Listar usuarios para Borrar
		
		function loadusuariosBorrar() {
			
			var getUrl = window.location;
			var baseUrl = getUrl.protocol + "//" + getUrl.host + "/";
			
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.open("GET", baseUrl+'//listarusuarios', true);
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
					var usuarios = JSON.parse(xmlhttp.responseText);
					var tbltop = "<table class='table table-hover'><thead><tr><th scope='col'>C&eacute;dula</th><th scope='col'>Email</th><th scope='col'>Nombre</th><th scope='col'>Usuario</th><th scope='col'>Borrar</th></tr></thead><tbody>";
					var main = "";
					for (i = 0; i < usuarios.length; i++) {
						main += "<tr><td>" + usuarios[i].cedula_usuario
								+ "</td><td>" + usuarios[i].email_usuario
								+ "</td><td>" + usuarios[i].nombre_usuario
								+ "</td><td>" + usuarios[i].usuario
								+ "</td><td><button type='button' class='btn btn-danger btn-uniform btn-round' id='"+ usuarios[i].cedula_usuario +"' onclick='eliminar("+ usuarios[i].cedula_usuario +")' data-toggle='modal' data-target='#ModalEliminar'><i class='icon-trash icon-large'></i></button>"
								+ "</td></tr>";
					}
					var tblbottom = "</tbody></table>";
					var tbl = tbltop + main + tblbottom;
					document.getElementById("usuariosinfoBorrar").innerHTML = tbl;
				}
			};
			xmlhttp.send();
		}
		
		
		//Eliminar Usuario
		function eliminar(id) {
			
			var getUrl = window.location;
			var baseUrl = getUrl.protocol + "//" + getUrl.host + "/";
			
			//var y = document.getElementById("cedula_usuario").value;
			var y = id;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', baseUrl+'//listarusuarios', false);
			req.send(null);
			var usuarios = null;
			if (req.status == 200)
				usuarios = JSON.parse(req.responseText);
			console.log(JSON.parse(req.responseText));

			for (i = 0; i < usuarios.length; i++) {
				
				console.log(usuarios[i].cedula_usuario);
				if (usuarios[i].cedula_usuario == y) {
					console.log(usuarios[i].cedula_usuario + " " + y);
					coincidencia = true
					break;
				}
			}
			console.log(coincidencia);

			if (coincidencia != false) {
				//var cedula=document.getElementById("cedula_usuario").value;
				var cedula = id;
				
				var xhr = new XMLHttpRequest();
				xhr.open('DELETE', baseUrl+'//eliminarusuario?cedula_usuario='+cedula);
						
				xhr.send();

			} 
		}
		
	