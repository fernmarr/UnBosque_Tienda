<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org"
	xmlns:layout="http://www.ultraq.net.nz/web/thymeleaf/layout"
	layout:decorate="fragments">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Tienda Gen&eacute;rica</title>
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
	media="all" class="rui-nightmode-link">
<link rel="stylesheet" href="./assets/css/custom.css">
<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">

<script src="./assets/js/clientes.js"></script>

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
				<h2>Administrar Clientes</h2>
			</div>
		</div>
		<div class="rui-page-content">
			<div class="container-fluid">
				<!-- tabs header -->
				<ul class="nav nav-tabs" role="tablist">
					<li class="nav-item"><a class="nav-link active" id="crear-tab"
						data-toggle="tab" href="#crearC" role="tab" aria-controls="home"
						aria-selected="true">Crear Cliente</a></li>
					<li class="nav-item"><a class="nav-link" id="consultar-tab"
						data-toggle="tab" href="#consultarC" onclick="loadclientes()" role="tab"
						aria-controls="profile" aria-selected="false">Consultar
							Clientes</a></li>
					<li class="nav-item"><a class="nav-link" id="actualizar-tab"
						data-toggle="tab" href="#actualizarC" role="tab"
						aria-controls="contact" aria-selected="false">Actualizar
							Cliente</a></li>
					<li class="nav-item"><a class="nav-link" id="borrar-tab"
						data-toggle="tab" href="#borrarC" onclick="loadclientesBorrar()" role="tab"
						aria-controls="contact" aria-selected="false">Borrar Cliente</a></li>
				</ul>
				<!-- tabs content -->
				<div class="tab-content">
					<!-- tab Crear -->
					<div class="tab-pane fade show active" id="crearC" role="tabpanel"
						aria-labelledby="crear-tab">
						<p class="mnb-4">Ingrese los datos del Cliente a crear:</p>
						<br>
						<form id="formCrearCli" action=javascript:;" onsubmit="enviarCli()">
							<div class="row vertical-gap sm-gap">
								<div class="col-12">
									<input type="text" class="form-control" id="cedula_cliente"
										placeholder="Cédula" required onfocus="ocultaerrorCrearCli()">
								</div>
								<div class="col-12">
									<input type="text" class="form-control" id="nombre_cliente"
										placeholder="Nombre Cliente" required>
								</div>
								<div class="col-12">
									<input type="text" class="form-control" id="direccion_cliente"
										placeholder="Dirección" required>
								</div>
								<div class="col-12">
									<input type="text" class="form-control" id="telefono_cliente"
										placeholder="Teléfono" required>
								</div>
								<div class="col-12">
									<div class="input-group">
										<div class="input-group-prepend">
											<div class="input-group-text">
												<span data-feather="at-sign"
													class="rui-icon rui-icon-stroke-1_5"></span>
											</div>
										</div>
										<input type="email" class="form-control" id="email_cliente"
											placeholder="Email" required>
									</div>
								</div>
								<div class="col-12">
									<button type="submit" class="btn btn-success">Guardar</button>
								</div>

							</div>
						</form>
						<br>
						<div id="errorCreaCli" class="alert alert-danger d-none" role="alert">Error
							al crear el Cliente, datos duplicados o incorrectos, intente
							nuevamente.</div>
						<div id="okCreaCli" class="alert alert-success d-none" role="alert">Cliente
							Creado Exitosamente</div>
					</div>
					<!-- tab Consultar -->
					<div class="tab-pane fade" id="consultarC" role="tabpanel"
						aria-labelledby="consultar-tab">
						<p class="mnb-4">Lista de Clientes</p>
						<br>
						<div id="clientesinfo"></div>
					</div>
					<!-- tab Actualizar -->
					<div class="tab-pane fade" id="actualizarC" role="tabpanel"
						aria-labelledby="actualizar-tab">
						<p class="mnb-4">Ingrese la cédula del cliente a actualizar:</p>
						<br>
						<form id="formActConsCli" class="#" action=javascript:;" onsubmit="actualizarCliente()">
							<div class="row vertical-gap sm-gap">
								<div class="col-12">
									<input type="text" class="form-control" id="cedula_clienteA"onfocus="ocultaerrorConsultar()"
										placeholder="Cédula" required>
								</div>
								<div class="col-12">
									<button type="button" class="btn btn-info" onclick="consultarCliente()">Consultar</button>
								</div>
								<div class="col-12">
									<div id="errorC" class="alert alert-danger d-none" role="alert">Error, el Cliente no Existe, intente nuevamente.</div>
								</div>
								<div class="col-12">
									<input type="text" class="form-control" id="nombre_clienteA"
										placeholder="Nombre Cliente" required>
								</div>
								<div class="col-12">
									<input type="text" class="form-control" id="direccion_clienteA"
										placeholder="Dirección" required>
								</div>
								<div class="col-12">
									<input type="text" class="form-control" id="telefono_clienteA"
										placeholder="Teléfono" required>
								</div>
								<div class="col-12">
									<div class="input-group">
										<div class="input-group-prepend">
											<div class="input-group-text">
												<span data-feather="at-sign"
													class="rui-icon rui-icon-stroke-1_5"></span>
											</div>
										</div>
										<input type="email" class="form-control" id="email_clienteA"
											placeholder="Email" required>
									</div>
								</div>
								<div class="col-12">
									<button id="btnA" type="submit" class="btn btn-success d-none">Guardar</button>
								</div>
							</div>
						</form>
						<br>
						<div id="errorCreaA" class="alert alert-danger d-none" role="alert">Error al Actualizar el Cliente, datos duplicados o incorrectos, intente nuevamente.</div>
						<div id="okCreaA" class="alert alert-success d-none" role="alert">Cliente Actualizado Exitosamente</div>
					</div>
					<!-- tab Borrar -->
					<div class="tab-pane fade" id="borrarC" role="tabpanel"
						aria-labelledby="borrar-tab">
						<p class="mnb-4">Seleccione el cliente a Borrar:</p>
						<br>
						<div id="clientesinfoBorrar"></div>
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


<!-- Modal -->
<div class="modal fade" id="ModalEliminar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel"><span class="icon-stack">
  <i class="icon-circle icon-stack-base"></i>
  <i class="icon-warning-sign icon-light icon-warning"></i>
</span> Clientes Eliminado</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span data-feather="x" class="rui-icon rui-icon-stroke-1_5"></span>
                </button>
            </div>
            <div class="modal-body">
                <div>Se elimino el Cliente Correctamente</div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-brand" onclick="loadclientesBorrar()" data-dismiss="modal">Continuar</button>
            </div>
        </div>
    </div>
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



	