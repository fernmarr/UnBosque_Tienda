<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org"
	xmlns:layout="http://www.ultraq.net.nz/web/thymeleaf/layout"
	layout:decorate="fragments">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Tienda Genérica</title>
<meta name="description"
	content="RootUI - clean and powerful solution for your Dashboards, Administration areas.">
<meta name="keywords"
	content="admin, dashboard, template, react, reactjs, html, jquery, clean">
<meta name="author" content="nK">
<link rel="icon" type="image/png" href="./assets/images/favicon.png">
<meta name="viewport"
	content="width=device-width,initial-scale=1,shrink-to-fit=no">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Nunito+Sans:300,400%7cOpen+Sans:300,400,600%7cPT+Serif:400i">
<link rel="stylesheet" href="./assets/css/bootstrap-custom.css">
<link rel="stylesheet"
	href="./assets/vendor/overlayscrollbars/css/OverlayScrollbars.css">
<link rel="stylesheet" href="./assets/css/yaybar.css">
<link rel="stylesheet"
	href="./assets/vendor/fancybox/dist/jquery.fancybox.css">
<link rel="stylesheet"
	href="./assets/vendor/emojionearea/dist/emojionearea.css">
<link rel="stylesheet"
	href="./assets/vendor/swiper/swiper-bundle.min.css">
<link rel="stylesheet" href="./assets/vendor/chartist/dist/chartist.css">
<link rel="stylesheet" href="./assets/vendor/jqvmap/dist/jqvmap.css">
<link rel="stylesheet" href="./assets/css/rootui.css">
<link rel="stylesheet" href="./assets/css/rootui-night.css"
	media="(night)" class="rui-nightmode-link">
<link rel="stylesheet" href="./assets/css/custom.css">
</head>
<body data-spy="scroll" data-target=".rui-page-sidebar"
	data-offset="140"
	class="rui-navbar-autohide rui-section-lines rui-navbar-show">
	<div
		class="yaybar yay-hide-to-small yay-shrink yay-gestures rui-yaybar">
		<div class="yay-wrap-menu">
			<div class="yaybar-wrap" th:fragment="aside">
				<ul>
					<li><a href="admin.jsp"><span class="yay-icon"><span
								data-feather="user" class="rui-icon rui-icon-stroke-1_5"></span></span>
							<span>Usuarios</span> <span class="rui-yaybar-circle"></span></a></li>
					<li><a href="clientes.jsp"><span class="yay-icon"><span
								data-feather="box" class="rui-icon rui-icon-stroke-1_5"></span></span>
							<span>Clientes</span> <span class="rui-yaybar-circle"></span></a></li>
					<li><a href="proveedores.jsp"><span class="yay-icon"><span
								data-feather="calendar" class="rui-icon rui-icon-stroke-1_5"></span></span>
							<span>Proveedores</span> <span class="rui-yaybar-circle"></span></a></li>
					<li><a href="productos.jsp"><span class="yay-icon"><span
								data-feather="database" class="rui-icon rui-icon-stroke-1_5"></span></span>
							<span>Productos</span> <span class="rui-yaybar-circle"></span></a></li>
					<li><a href="ventas.jsp"><span class="yay-icon"><span
								data-feather="send" class="rui-icon rui-icon-stroke-1_5"></span></span>
							<span>Ventas</span> <span class="rui-yaybar-circle"></span></a></li>
					<li><a href="reportes.jsp"><span class="yay-icon"><span
								data-feather="layers" class="rui-icon rui-icon-stroke-1_5"></span></span>
							<span>Reportes</span> <span class="rui-yaybar-circle"></span></a></li>
				</ul>
			</div>
		</div>

	</div>
	<div class="rui-yaybar-bg"></div>
	<nav class="rui-navbar rui-navbar-top rui-navbar-sticky">
		<div class="rui-navbar-brand">
			<a href="dashboard.html" class="rui-navbar-logo"><img
				src="/assets/images/logo@300.png" width="150"></a>
			<button class="yay-toggle rui-yaybar-toggle" type="button">
				<span></span>
			</button>
		</div>
		<div class="container-fluid">
			<div class="rui-navbar-content">
				<ul class="nav">
				</ul>
				<ul class="nav rui-navbar-right">
					<li
						class="dropdown dropdown-hover dropdown-triangle dropdown-keep-open"><a
						class="dropdown-item rui-navbar-avatar mnr-6" href="#"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img
							src="./assets/images/avatar-1.png" alt=""></a>
						<ul class="nav dropdown-menu">
							<li><a href="/" class="nav-link"><span
									data-feather="log-out" class="rui-icon rui-icon-stroke-1_5"></span>
									<span>Salir</span> <span class="rui-nav-circle"></span></a></li>
						</ul></li>

				</ul>
			</div>
		</div>
	</nav>
	<div class="rui-navbar rui-navbar-mobile">
		<div class="rui-navbar-head">
			<button
				class="rui-yaybar-toggle rui-yaybar-toggle-inverse yay-toggle"
				type="button" aria-label="Toggle side navigation">
				<span></span>
			</button>
			<div class="dropdown dropdown-triangle">
				<a class="dropdown-item rui-navbar-avatar" href="#"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img
					src="./assets/images/avatar-1.png" alt=""></a>
				<ul class="dropdown-menu nav">
					<li><a href="/" class="nav-link"><span
							data-feather="log-out" class="rui-icon rui-icon-stroke-1_5"></span>
							<span>Salir</span> <span class="rui-nav-circle"></span></a></li>
				</ul>
			</div>
		</div>

	</div>
	<div class="rui-page content-wrap">
		<div class="rui-page-title">
			<div class="container-fluid">
				<h2>Administrar Usuarios</h2>
			</div>
		</div>
		<div class="rui-page-content">
			<div class="container-fluid">
				<!-- tabs header -->
				<ul class="nav nav-tabs" role="tablist">
					<li class="nav-item"><a class="nav-link active" id="home-tab"
						data-toggle="tab" href="#crear" role="tab" aria-controls="home"
						aria-selected="true">Crear Usuario</a></li>
					<li class="nav-item"><a class="nav-link" id="profile-tab"
						data-toggle="tab" href="#consultar" onclick="loadusuarios()"
						role="tab" aria-controls="profile" aria-selected="false">Consultar
							Usuario</a></li>
					<li class="nav-item"><a class="nav-link" id="contact-tab"
						data-toggle="tab" href="#actualizar" role="tab"
						aria-controls="contact" aria-selected="false">Actualizar
							Usuario</a></li>
					<li class="nav-item"><a class="nav-link" id="contact-tab"
						data-toggle="tab" href="#borrar" role="tab"
						aria-controls="contact" aria-selected="false">Borrar Usuario</a></li>
				</ul>
				<!-- tabs content -->
				<div class="tab-content">
					<!-- tab Crear -->
					<div class="tab-pane fade show active" id="crear" role="tabpanel"
						aria-labelledby="home-tab">
						<p class="mnb-4">Ingrese los datos del usuario a crear:</p>
						<br>
						<form id="formCrear" action=javascript:;" onsubmit="enviar()">
							<div class="row vertical-gap sm-gap">
								<div class="col-12">
									<input type="text" class="form-control" id="cedula_usuario"
										placeholder="Cédula" required onfocus="ocultaerrorCrear()">
								</div>
								<div class="col-12">
									<div class="input-group">
										<div class="input-group-prepend">
											<div class="input-group-text">
												<span data-feather="at-sign"
													class="rui-icon rui-icon-stroke-1_5"></span>
											</div>
										</div>
										<input type="text" class="form-control" id="email_usuario"
											placeholder="Email" required>
									</div>
								</div>
								<div class="col-12">
									<input type="text" class="form-control" id="nombre_usuario"
										placeholder="Nombre" required>
								</div>
								<div class="col-12">
									<input type="text" class="form-control" id="user"
										placeholder="Usuario" required>
								</div>
								<div class="col-12">
									<input type="password" class="form-control" id="password"
										placeholder="Contraseña" required>
								</div>
								<div class="col-12">
									<button type="submit" class="btn btn-success">Guardar</button>
								</div>

							</div>
						</form>
						<br>
						<div id="errorCrea" class="alert alert-danger d-none" role="alert">Error al crear el Usuario, datos duplicados o incorrectos, intente nuevamente.</div>
						<div id="okCrea" class="alert alert-success d-none" role="alert">Usuario Creado Exitosamente</div>
					</div>
					<!-- tab Consultar -->
					<div class="tab-pane fade" id="consultar" role="tabpanel"
						aria-labelledby="profile-tab">
						<p class="mnb-4">Lista de Usuarios</p>
						<br>
						<div id="usuariosinfo"></div>
					</div>
					<!-- tab Actualizar -->
					<div class="tab-pane fade" id="actualizar" role="tabpanel"
						aria-labelledby="contact-tab">
						<p class="mnb-4">Ingrese la cédula del usuario a actualizar:</p>
						<br>
						<form id="formActCons" class="#">
							<div class="row vertical-gap sm-gap">
								<div class="col-12">
									<input type="text" class="form-control" id="cedula_usuarioA"
										placeholder="Cédula">
								</div>
								<div class="col-12">
									<button type="button" class="btn btn-info" onclick="consultarUsuario()">Consultar</button>
								</div>
								<div class="col-12">
									<div class="input-group">
										<div class="input-group-prepend">
											<div class="input-group-text">
												<span data-feather="at-sign"
													class="rui-icon rui-icon-stroke-1_5"></span>
											</div>
										</div>
										<input type="text" class="form-control" id="email_usuarioA"
											placeholder="Email">
									</div>
								</div>
								<div class="col-12">
									<input type="text" class="form-control" id="nombre_usuarioA"
										placeholder="Nombre">
								</div>
								<div class="col-12">
									<input type="text" class="form-control" id="usuarioA"
										placeholder="Usuario">
								</div>
								<div class="col-12">
									<input type="password" class="form-control" id="passwordA"
										placeholder="Contraseña">
								</div>
								<div class="col-12">
									<button type="button" class="btn btn-success">Guardar</button>
								</div>

							</div>
						</form>
						<br>
						<div class="alert alert-danger" role="alert">Usuario
							Actualizado</div>
					</div>
					<!-- tab Borrar -->
					<div class="tab-pane fade" id="borrar" role="tabpanel"
						aria-labelledby="contact-tab">
						<p class="mnb-4">Seleccione el usuario a Borrar:</p>
						<br>
						<table class="table table-striped table-dark">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">Cédula</th>
									<th scope="col">Email</th>
									<th scope="col">Nombre</th>
									<th scope="col">Usuario</th>
									<th scope="col">Borrar</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">1</th>
									<td>1111</td>
									<td>@mdo</td>
									<td>qweqweqw</td>
									<td>ddsfd</td>
									<td><button type="button"
											class="btn btn-danger btn-uniform btn-round">
											<span class="icon"><span stroke-width="1.5"
												data-feather="trash-2"></span></span>
										</button></td>
								</tr>
								<tr>
									<th scope="row">2</th>
									<td>2222</td>
									<td>@fat</td>
									<td>dsfsd dsfs</td>
									<td>dsfsd</td>
									<td><button type="button"
											class="btn btn-danger btn-uniform btn-round">
											<span class="icon"><span stroke-width="1.5"
												data-feather="trash-2"></span></span>
										</button></td>
								</tr>
								<tr>
									<th scope="row">3</th>
									<td>Larry</td>
									<td>@twitter</td>
									<td>fsdf fdsfsd</td>
									<td>fsdf</td>
									<td><button type="button"
											class="btn btn-danger btn-uniform btn-round">
											<span class="icon"><span stroke-width="1.5"
												data-feather="trash-2"></span></span>
										</button></td>
								</tr>
							</tbody>
						</table>
						<div class="alert alert-danger" role="alert">Usuario
							Eliminado</div>
					</div>
				</div>
			</div>
		</div>
		<footer class="rui-footer">
			<div class="container-fluid">
				<p class="mb-0">2021 &copy; UnBosque</p>
			</div>
		</footer>
	</div>


	<script src="./assets/vendor/jquery/dist/jquery.min.js"></script>
	<script src="./assets/vendor/popper.js/dist/umd/popper.min.js"></script>
	<script src="./assets/vendor/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="./assets/vendor/feather-icons/dist/feather.min.js"></script>
	<script
		src="./assets/vendor/overlayscrollbars/js/jquery.overlayScrollbars.min.js"></script>
	<script src="./assets/js/yaybar.js"></script>
	<script src="./assets/vendor/object-fit-images/dist/ofi.min.js"></script>
	<script src="./assets/vendor/fancybox/dist/jquery.fancybox.min.js"></script>
	<script src="./assets/vendor/emojione/lib/js/emojione.min.js"></script>
	<script src="./assets/vendor/emojionearea/dist/emojionearea.min.js"></script>
	<script src="./assets/vendor/moment/min/moment.min.js"></script>
	<script src="./assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="./assets/vendor/chart.js/dist/Chart.min.js"></script>
	<script src="./assets/vendor/chartist/dist/chartist.min.js"></script>
	<script src="./assets/vendor/jqvmap/dist/jquery.vmap.min.js"></script>
	<script src="./assets/vendor/jqvmap/dist/maps/jquery.vmap.usa.js"></script>
	<script src="./assets/js/rootui.js"></script>
	<script src="./assets/js/rootui-init.js"></script>




	<script>
		// Crear Usuario
		function enviar() {
			var x = document.getElementById("user").value;
			var y = document.getElementById("cedula_usuario").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', 'http://localhost:8080/listarusuarios', false);
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
				xhr.open("POST", "http://localhost:8080/registrarusuario");

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
		
		// Oculta mensajes de error
		function ocultaerrorCrear(){
			
			var element = document.getElementById("errorCrea");
			element.classList.add("d-none");
			var element2 = document.getElementById("okCrea");
			element2.classList.add("d-none");
		}

		// Listar usuarios
		var baseurl = "http://localhost:8080/listarusuarios";
		function loadusuarios() {
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.open("GET", baseurl, true);
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
					var usuarios = JSON.parse(xmlhttp.responseText);
					var tbltop = "<table class='table table-striped table-dark'><thead><tr><th scope='col'>Cédula</th><th scope='col'>Email</th><th scope='col'>Nombre</th><th scope='col'>Usuario</th><th scope='col'>Borrar</th></tr></thead><tbody>";
					var main = "";
					for (i = 0; i < usuarios.length; i++) {
						main += "<tr><td>" + usuarios[i].cedula_usuario
								+ "</td><td>" + usuarios[i].email_usuario
								+ "</td><td>" + usuarios[i].nombre_usuario
								+ "</td><td>" + usuarios[i].password
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
		
		// Listar usuarios
		
		async function consultarUsuario() {
			let cedUsr = document.getElementById("cedula_usuarioA").value;
			console.log(cedUsr);
			var url = "http://localhost:8080/consultarusuario?cedula_usuario=1";
			
			 try {
			        let res = await fetch(url);
			        return await res.json();
			        console.log(res);
			    } catch (error) {
			        console.log(error);
			    }
			
			

		
		// Actualizar usuarios
		//var baseurl3 = "http://localhost:8080/listarusuarios";
		}
		
	</script>

</body>
</html>