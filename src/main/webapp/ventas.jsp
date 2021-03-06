<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org"
	xmlns:layout="http://www.ultraq.net.nz/web/thymeleaf/layout"
	layout:decorate="fragments">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Tienda Gen?rica</title>
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
			<a class="rui-navbar-logo mr-auto" href="dashboard.html"><img
				src="./assets/images/logo.svg"
				data-src-night="./assets/images/logo-white.svg"
				data-src-day="./assets/images/logo.svg" alt="" width="45"></a>
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
					<li class="nav-item"><a class="nav-link active" id="home-tab"
						data-toggle="tab" href="#crear" role="tab" aria-controls="home"
						aria-selected="true">Formulario de Venta</a></li>
					
				</ul>
				<!-- tabs content -->
				<div class="tab-content">
					<!-- tab Crear -->
					<div class="tab-pane fade show active" id="crear" role="tabpanel"
						aria-labelledby="home-tab">
						<p class="mnb-4">Ingrese los datos de la venta:</p>
						<br>
							Ventas
						<br>
						<div class="alert alert-danger" role="alert">Se registró la venta exitosamente</div>
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