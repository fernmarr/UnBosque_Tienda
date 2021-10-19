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
<link rel="stylesheet" href="./assets/css/rootui-night.css" media="all"
	class="rui-nightmode-link">
<link rel="stylesheet" href="./assets/css/custom.css">
<link
	href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css"
	rel="stylesheet">

<script src="./assets/js/productos.js"></script>
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
					<li><a href="reportes.jsp" onclick="reporteusuarios()"><span class="yay-icon"><span
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
							<li><a href="index.html" class="nav-link"><span
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
					<li><a href="profile.html" class="nav-link"><span
							data-feather="log-out" class="rui-icon rui-icon-stroke-1_5"></span>
							<span>Salir</span> <span class="rui-nav-circle"></span></a></li>
				</ul>
			</div>
		</div>

	</div>
	<div class="rui-page content-wrap">
		<div class="rui-page-title">
			<div class="container-fluid">
				<h2>Administrar Productos</h2>
			</div>
		</div>
		<div class="rui-page-content">
			<div class="container-fluid">
				<!-- tabs header -->
				<ul class="nav nav-tabs" role="tablist">
					<li class="nav-item"><a class="nav-link active"
						id="cargar-prod" data-toggle="tab" href="#cargarProd" role="tab"
						aria-controls="cargar" aria-selected="true">Cargar Productos</a></li>
					<li class="nav-item"><a class="nav-link" id="crear-prod"
						data-toggle="tab" href="#crearProd" role="tab"
						aria-controls="crear" aria-selected="true">Crear Producto</a></li>
					<li class="nav-item"><a class="nav-link" id="consultar-prod"
						data-toggle="tab" href="#consultarProd" onclick="loadproductos()"
						role="tab" aria-controls="consultar" aria-selected="false">Consultar
							Productos</a></li>
					<li class="nav-item"><a class="nav-link" id="actualizar-prod"
						data-toggle="tab" href="#actualizarProd" role="tab"
						aria-controls="actualizar" aria-selected="false">Actualizar
							Producto</a></li>
					<li class="nav-item"><a class="nav-link" id="borrar-prod"
						data-toggle="tab" href="#borrarProd"
						onclick="loadproductosBorrar()" role="tab" aria-controls="borrar"
						aria-selected="false">Borrar Producto</a></li>
				</ul>
				<!-- tabs content -->
				<div class="tab-content">
					<!-- tab Cargar -->
					<div class="tab-pane fade show active" id="cargarProd"
						role="tabpanel" aria-labelledby="cargar-tab">
						<p class="mnb-4">Seleccione el archivo a cargar:</p>
						<br>
						<form id="form1">

							<div class="row pb-5">
								<div class="col-md-6">
									<input type="file" id="archivo"
										accept=".csv" placeholder="Seleccione el archivo a cargar">
								</div>
							</div>
							<div class="row mt-5">
								<div class="col-md-4 ">


									<button type="button" class="btn btn-success"
										onclick="subirArchivo()">Subir archivo</button>
								</div>
							</div>
						</form>
						<br>
						<div id="errorCargarProd" class="alert alert-danger d-none"
							role="alert">Error al cargar el Archivo, datos duplicados o
							incorrectos, intente nuevamente.</div>
						<div id="okCargarProd" class="alert alert-success d-none"
							role="alert">Archivo Cargado Exitosamente</div>
					</div>
					<!-- tab Crear -->
					<div class="tab-pane fade show" id="crearProd" role="tabpanel"
						aria-labelledby="crear-tab">
						<p class="mnb-4">Ingrese los datos del Producto a crear:</p>
						<br>
						<form id="formCrearProd" action=javascript:;
							" onsubmit="enviarProd()">
							<div class="row vertical-gap sm-gap">
								<div class="col-12">
									<input type="text" class="form-control" id="codigo_producto"
										placeholder="C&oacute;digo Producto" required
										onfocus="ocultaerrorCrearProd()">
								</div>
								<div class="col-12">
									<input type="text" class="form-control" id="ivacompra"
										placeholder="IVA Compra" required>
								</div>
								<div class="col-12">
									<input type="text" class="form-control" id="nitproveedor"
										placeholder="NIT Proveedor" required>
								</div>
								<div class="col-12">
									<input type="text" class="form-control" id="nombre_producto"
										placeholder="Nombre Producto" required>
								</div>
								<div class="col-12">
									<input type="text" class="form-control" id="precio_compra"
										placeholder="Precio Compra" required>
								</div>
								<div class="col-12">
									<input type="text" class="form-control" id="precio_venta"
										placeholder="Precio Venta" required>
								</div>
								<div class="col-12">
									<button type="submit" class="btn btn-success">Guardar</button>
								</div>
							</div>
						</form>
						<br>
						<div id="errorCreaProd" class="alert alert-danger d-none"
							role="alert">Error al crear el Producto, datos duplicados o
							incorrectos, intente nuevamente.</div>
						<div id="okCreaProd" class="alert alert-success d-none"
							role="alert">Producto Creado Exitosamente</div>
					</div>
					<!-- tab Consultar -->
					<div class="tab-pane fade" id="consultarProd" role="tabpanel"
						aria-labelledby="consultar-tab">
						<p class="mnb-4">Lista de Productos</p>
						<br>
						<div id="productosinfo"></div>
					</div>
					<!-- tab Actualizar -->
					<div class="tab-pane fade" id="actualizarProd" role="tabpanel"
						aria-labelledby="actualizar-tab">
						<p class="mnb-4">Ingrese el ID del Producto a actualizar:</p>
						<br>
						<form id="formActConsProd" class="#" action=javascript:;
							" onsubmit="actualizarProducto()">
							<div class="row vertical-gap sm-gap">
								<div class="col-12">
									<input type="text" class="form-control" id="codigo_productoA"
										onfocus="ocultaerrorConsultar()"
										placeholder="C&oacute;digo Producto" required>
								</div>
								<div class="col-12">
									<button type="button" class="btn btn-info"
										onclick="consultarProducto()">Consultar</button>
								</div>
								<div class="col-12">
									<div id="errorC" class="alert alert-danger d-none" role="alert">Error,
										el Producto no Existe, intente nuevamente.</div>
								</div>
								<div class="col-12">
									<input type="text" class="form-control" id="ivacompraA"
										placeholder="IVA Compra" required>
								</div>
								<div class="col-12">
									<input type="text" class="form-control" id="nitproveedorA"
										placeholder="NIT Proveedor" disabled>
								</div>
								<div class="col-12">
									<input type="text" class="form-control" id="nombre_productoA"
										placeholder="Nombre Producto" required>
								</div>
								<div class="col-12">
									<input type="text" class="form-control" id="precio_compraA"
										placeholder="Precio Compra" required>
								</div>
								<div class="col-12">
									<input type="text" class="form-control" id="precio_ventaA"
										placeholder="Precio Venta" required>
								</div>
								<div class="col-12">
									<button id="btnA" type="submit" class="btn btn-success d-none">Guardar</button>
								</div>
							</div>
						</form>
						<br>
						<div id="errorCreaA" class="alert alert-danger d-none"
							role="alert">Error al Actualizar el Producto, datos
							duplicados o incorrectos, intente nuevamente.</div>
						<div id="okCreaA" class="alert alert-success d-none" role="alert">Producto
							Actualizado Exitosamente</div>
					</div>
					<!-- tab Borrar -->
					<div class="tab-pane fade" id="borrarProd" role="tabpanel"
						aria-labelledby="borrar-tab">
						<p class="mnb-4">Seleccione el Producto a Borrar:</p>
						<br>
						<div id="productosinfoBorrar"></div>
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
	<div class="modal fade" id="ModalEliminarProducto" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">
						<span class="icon-stack"> <i
							class="icon-circle icon-stack-base"></i> <i
							class="icon-warning-sign icon-light icon-warning"></i>
						</span> Producto Eliminado
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span data-feather="x" class="rui-icon rui-icon-stroke-1_5"></span>
					</button>
				</div>
				<div class="modal-body">
					<div>Se elimino el Producto Correctamente</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-brand"
						onclick="loadproductosBorrar()" data-dismiss="modal">Continuar</button>
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
</body>
</html>




