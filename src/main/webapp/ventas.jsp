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

<script src="./assets/js/ventas.js"></script>

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
					<li><a href="ventas.jsp"><span class="yay-icon"><span data-feather="send"
								class="rui-icon rui-icon-stroke-1_5"></span></span> <span>Ventas</span>
							<span class="rui-yaybar-circle"></span></a></li>
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
				<h2>Ventas</h2>
			</div>
		</div>
		<div class="rui-page-content">
			<div class="container-fluid">
				<!-- tabs header -->
				<ul class="nav nav-tabs" role="tablist">
					<li class="nav-item"><a class="nav-link active"
						id="crear-venta" data-toggle="tab" href="#crearVenta" role="tab"
						aria-controls="crear" aria-selected="true">Formulario de Venta</a></li>
				</ul>
				<!-- tabs content -->
				<div class="tab-content">
					<!-- tab Crear Venta -->
					<div class="tab-pane fade show active" id="crearVenta"
						role="tabpanel" aria-labelledby="cargar-tab">

						<br>
						<div class="col-12">
							<button type="button" onclick="paso1()" class="btn btn-success">
								<i class="fas fa-plus-circle"></i> Nueva Venta
							</button>
						</div>
						<!-- ----- -->

						<form onsubmit="registrar()" id="form_venta" class="d-none">
							<div class="row d-flex flex-row-reverse">
								<div class="col-2 text-center">
									<fieldset class="col-12" disabled>
										<label for="consecutivo">Consecutivo</label> <input
											type="text" class="form-control text-center" id="consecutivo">
									</fieldset>
								</div>


							</div>
							<div class="row rui-snippet-preview" id="paso1">
								<div class="col-12 pb-10">
									<p class="lead">Datos del Cliente</p>
								</div>
								<div class="col-2">
									<input type="text" onfocus="limpiarCliente()"
										class="form-control" id="cedula_cliente"
										placeholder="C&eacute;dula Cliente" required>
								</div>
								<div class="col-1">
									<button type="button"
										class="btn btn-success btn-uniform btn-round"
										onclick="traerNombreCliente()">
										<span class="icon"><span data-feather="search"
											class="rui-icon rui-icon-stroke-1_5"></span></span>
									</button>
								</div>
								<div class="col-9">
									<fieldset disabled>
										<input type="text" class="form-control" id="nombre_cliente"
											placeholder="Nombre Cliente" required>
									</fieldset>
								</div>
							</div>

							<div class="row rui-snippet-preview d-none" id="paso2">
								<div class="col-12 pb-10">
									<p class="lead">Datos del Usuario</p>
								</div>
								<div class="col-2">
									<input type="text" onfocus="limpiarUsuario()"
										class="form-control" id="cedula_usuario"
										placeholder="C&eacute;dula Usuario" required>
								</div>
								<div class="col-1">
									<button type="button"
										class="btn btn-success btn-uniform btn-round"
										onclick="traerNombreUsuario()">
										<span class="icon"><span data-feather="search"
											class="rui-icon rui-icon-stroke-1_5"></span></span>
									</button>
								</div>
								<div class="col-9">
									<fieldset disabled>
										<input type="text" class="form-control" id="nombre_usuario"
											placeholder="Nombre Usuario" required>
									</fieldset>
								</div>
							</div>

							<div class="row rui-snippet-preview d-none" id="paso3">
								<div class="col-12 pb-10">
									<p class="lead">Datos de los productos</p>
								</div>
								<!-- Producto 1 -->
								<div class="row ">
									<div class="col-md-2">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text">Cod.</span> <input type="text"
												class="form-control" id="codigo_producto1"
												onfocus="limpiarProducto1()" required>
										</div>
									</div>
									<div class="col-md-1">
										<button type="button"
											class="btn btn-success btn-uniform btn-round"
											onclick="cargarProducto1()">
											<span class="icon"><span data-feather="search"
												class="rui-icon rui-icon-stroke-1_5"></span></span>
										</button>
									</div>

									<div class="col-md-4">
										<div class="input-group input-group-sm mb-3">
											<div class="input-group input-group-sm mb-3">
												<span class="input-group-text">Nombre</span> <input disabled
													type="text" class="form-control" id="nombre_producto1">
											</div>
										</div>
									</div>

									<div class="col-md-2">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text">Cant.</span> <input
												type="text" class="form-control" id="cant1"
												oninput="calcularPrecio1()">
										</div>
									</div>

									<div class="col-md-3">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text" id="basic-addon1">Valor
												total</span> <input disabled type="text" class="form-control"
												id="valtotal1" value="0">
										</div>
									</div>
								</div>

								<!-- producto 2 -->
								<div class="row ">
									<div class="col-md-2">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text">Cod.</span> <input type="text"
												class="form-control" id="codigo_producto2"
												onfocus="limpiarProducto2()">
										</div>
									</div>
									<div class="col-md-1">
										<button type="button"
											class="btn btn-success btn-uniform btn-round"
											onclick="cargarProducto2()">
											<span class="icon"><span data-feather="search"
												class="rui-icon rui-icon-stroke-1_5"></span></span>
										</button>
									</div>

									<div class="col-md-4">
										<div class="input-group input-group-sm mb-3">
											<div class="input-group input-group-sm mb-3">
												<span class="input-group-text">Nombre</span> <input disabled
													type="text" class="form-control" id="nombre_producto2">
											</div>
										</div>
									</div>

									<div class="col-md-2">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text">Cant.</span> <input
												type="text" class="form-control" id="cant2"
												oninput="calcularPrecio2()">
										</div>
									</div>

									<div class="col-md-3">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text">Valor total</span> <input
												disabled type="text" class="form-control" id="valtotal2"
												value="0">
										</div>
									</div>
								</div>

								<!-- producto 3 -->
								<div class="row ">
									<div class="col-md-2">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text">Cod.</span> <input type="text"
												class="form-control" id="codigo_producto3"
												onfocus="limpiarProducto3()">
										</div>
									</div>
									<div class="col-md-1">
										<button type="button"
											class="btn btn-success btn-uniform btn-round"
											onclick="cargarProducto3()">
											<span class="icon"><span data-feather="search"
												class="rui-icon rui-icon-stroke-1_5"></span></span>
										</button>
									</div>

									<div class="col-md-4">
										<div class="input-group input-group-sm mb-3">
											<div class="input-group input-group-sm mb-3">
												<span class="input-group-text">Nombre</span> <input disabled
													type="text" class="form-control" id="nombre_producto3">
											</div>
										</div>
									</div>

									<div class="col-md-2">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text">Cant.</span> <input
												type="text" class="form-control" id="cant3"
												oninput="calcularPrecio3()">
										</div>
									</div>

									<div class="col-md-3">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text">Valor total</span> <input
												disabled type="text" class="form-control" id="valtotal3"
												value="0">
										</div>
									</div>
								</div>

							</div>

							<div id="paso4" class="d-none">
								<div class="row justify-content-end mt-3">
									<div class="col-xl-3 col-lg-3 col-md-7 col-sm-8">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text" id="basic-addon1">Total
												venta</span> <input type="text" class="form-control"
												id="total_venta" disabled>
										</div>
									</div>
								</div>

								<div class="row justify-content-end mt-3">
									<div class="col-xl-3 col-lg-3 col-md-7 col-sm-8">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text" id="basic-addon1">Total
												IVA</span> <input type="text" class="form-control" id="total_iva"
												disabled>
										</div>
									</div>
								</div>

								<div class="row justify-content-end mt-3">
									<div class="col-xl-3 col-lg-3 col-md-7 col-sm-8">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text" id="basic-addon1">Total
												venta + IVA</span> <input type="text" class="form-control"
												id="total_venta_iva" disabled>
										</div>
									</div>
								</div>

								<div class="row mt-20 text-right">
									<div class="col-12">
										<button type="button" onclick="cancelar()"
											class="btn btn-warning">
											<i class="fas fa-plus-circle"></i> Cancelar
										</button>
										<button type="button" onclick="registrar()"
											class="btn btn-success">
											<i class="fas fa-plus-circle"></i> Registrar venta
										</button>
									</div>
								</div>
							</div>

						</form>

						<!-- ----- -->
						<br>
						<div class="row mt-20">
							<div id="errorCrearVenta"
								class="alert alert-danger d-none col-12" role="alert">Error
								al registrar la venta, datos duplicados o incorrectos, intente
								nuevamente.</div>
							<div id="okCrearVenta" class="alert alert-success d-none col-12"
								role="alert">Venta Registrada Exitosamente</div>
						</div>
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
</body>
</html>