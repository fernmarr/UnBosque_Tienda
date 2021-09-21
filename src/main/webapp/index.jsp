<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Tienda Genérica</title>
<meta name="description"
	content="Aplicación Web Java-SpringBoot para una Tienda Genérica">
<meta name="keywords"
	content="tienda, software, java, springboot">
<meta name="author" content="fernmarr@gmail.com">
<link rel="icon" type="image/png" href="/assets/images/lettuce.png">
<meta name="viewport"
	content="width=device-width,initial-scale=1,shrink-to-fit=no">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Nunito+Sans:300,400%7cOpen+Sans:300,400,600%7cPT+Serif:400i">
<link rel="stylesheet" href="./assets/css/bootstrap-custom.css">
<link rel="stylesheet" href="./assets/css/rootui.css">
<link rel="stylesheet" href="./assets/css/rootui-night.css"
	media="(night)" class="rui-nightmode-link">
<link rel="stylesheet" href="./assets/css/custom.css">





</head>
<body>
	<div class="rui-main">
		<div class="rui-sign align-items-center justify-content-center">
			<div class="bg-image">
				<div class="bg-3"></div>
			</div>
				<div class="form rui-sign-form rui-sign-form-cloud">
					<div class="col-12 pb-30">
						<img src="/assets/images/logo@300.png">
						<!--  <h1 class="display-4 mb-10 text-center">Login</h1> -->
					</div>
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item"><a class="nav-link active" id="home-tab"
							data-toggle="tab" href="#home" role="tab" aria-controls="home"
							aria-selected="true">Login</a></li>
						<li class="nav-item"><a class="nav-link" id="profile-tab"
							data-toggle="tab" href="#profile" role="tab"
							aria-controls="profile" aria-selected="false">Registro</a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane fade show active" id="home" role="tabpanel"
							aria-labelledby="home-tab">
							<form action=javascript:;" onsubmit="comparar()">
							<div class="row vertical-gap sm-gap justify-content-center">
								
								<div class="col-12">
									<input type="text" class="form-control" id="inputuser"
										placeholder="Usuario" required onfocus="ocultaerror()">
								</div>
								<div class="col-12">
									<input type="password" class="form-control" id="inputpass"
										placeholder="Contraseña" required>
								</div>
								<div class="col-sm-6">
									<div
										class="custom-control custom-checkbox d-flex justify-content-start">
										<input type="checkbox" class="custom-control-input"
											id="rememberMe"> <label
											class="custom-control-label fs-13" for="rememberMe">Recordarme</label>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="d-flex justify-content-end">
										<a data-toggle="modal" data-target="#modal_soporte"
											class="fs-13">Olvidaste la Contraseña?</a>
									</div>
								</div>
								<div class="col-12">
									<button type="submit" class="btn btn-success btn-block text-center">Entrar</button>
								</div>
								<div class="col-12">
									<div id="error" class="alert alert-danger d-none" role="alert">Usuario o contraseña incorrecta!</div>
								</div>
								
								<!-- <div class="col-12">
									<div class="rui-sign-or mt-2 mb-5">o</div>
								</div>
								<div class="col-12">
									<ul class="rui-social-links">
										<li><a href="#" class="rui-social-github"><span
												class="fab fa-github"></span> Github</a></li>
										<li><a href="#" class="rui-social-facebook"><span
												class="fab fa-facebook-f"></span> Facebook</a></li>
										<li><a href="#" class="rui-social-google"><span
												class="fab fa-google"></span> Google</a></li>
									</ul>
								</div> -->
							</div>
							</form>
						</div>
						<div class="tab-pane fade" id="profile" role="tabpanel"
							aria-labelledby="profile-tab">
							<form action="admin.jsp">
							<div class="row vertical-gap sm-gap justify-content-center">
								<div class="col-12">
									<input class="form-control" placeholder="Nombre completo"
										required>
								</div>
								<div class="col-12">
									<input type="email" class="form-control" placeholder="Email"
										required>
								</div>
								<div class="col-12">
									<input type="password" class="form-control"
										placeholder="Contraseña" required>
								</div>
								<div class="col-12">
									<div
										class="custom-control custom-checkbox d-flex justify-content-start">
										<input type="checkbox" class="custom-control-input"
											id="rememberMe" required> <label
											class="custom-control-label text-grey-5 fs-13"
											for="rememberMe">Acepto términos y condiciones</a>
										</label>
									</div>
								</div>
								<div class="col-12">
									<button type="submit"
										class="btn btn-success btn-block text-center">Registro</button>
								</div>
								<div class="col-12">
									<div class="rui-sign-or mt-2 mb-5">o</div>
								</div>
								<div class="col-12">
									<ul class="rui-social-links">
										<li><a href="dashboard.html" class="rui-social-github"><span
												class="fab fa-github"></span> Github</a></li>
										<li><a href="dashboard.html" class="rui-social-facebook"><span
												class="fab fa-facebook-f"></span> Facebook</a></li>
										<li><a href="dashboard.html" class="rui-social-google"><span
												class="fab fa-google"></span> Google</a></li>
									</ul>
								</div>
							</div>
							</form>
						</div>
					</div>
				</div>
		</div>
	</div>

	<!-- Modal Olvide la ContraseÃ±a -->
	<div class="modal fade" id="modal_soporte" tabindex="-1" role="dialog"
		aria-labelledby="modal_soporte_Label" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modal_soporte_Label">Olvidé la
						Contraseña</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span data-feather="x" class="rui-icon rui-icon-stroke-1_5"></span>
					</button>
				</div>
				<div class="modal-body"> <p>Q MAL.. NO PODEMOS HACER NADA EN ESTE MOMENTO. MUCHA SUERTE</p></div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Cerrar</button>
					<button type="button" class="btn btn-brand">Continuar</button>
				</div>
			</div>
		</div>
	</div>

<!-- Script que trae la informacion de la api y la compara con las entradas -->
	<script>
		function comparar() {
			//trayendo texto de input de username
			var x = document.getElementById("inputuser").value;
			//trayendo texto de input de password
			var y = document.getElementById("inputpass").value;
			//url de la api 
			var baseurl = "http://localhost:8080/listarusuarios";
			//creando un objeto de manipulacion de solicitudes
			var xmlhttp = new XMLHttpRequest();
			//abriendo la api
			xmlhttp.open("GET", baseurl, true);
			//funcion interna que compara la información
			xmlhttp.onreadystatechange = function() {
				//si se obtiene un 200 (Conexion correcta)
				if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
					//convirtiendo JSON en variable javascrip
					var usuarios = JSON.parse(xmlhttp.responseText);
					
					//verificando uno por uno si existe ese usuario
					for (i = 0; i < usuarios.length; i++) {
						
						//imprimiendo en la consola del navegador pata verificar
						console.log(usuarios);
						console.log(x);
						console.log(usuarios[i].usuario);
						console.log(y);
						console.log(usuarios[i].password);
						
						//si el nombre coincide
						if (usuarios[i].usuario === x) {
							//si la clave coincide
							if (usuarios[i].password === y) {
								console.log("si");
								var element = document.getElementById("error");
								element.classList.add("d-none");
								document.getElementById("inputuser").value = "";
								document.getElementById("inputpass").value = "";
								window.location.href = "admin.jsp";
								return;
							} else {
								//si la clave NO coincide
								console.log("error clave");
								var element = document.getElementById("error");
								element.classList.remove("d-none");
								document.getElementById("inputuser").value = "";
								document.getElementById("inputpass").value = "";
								return;
							}
						}
					}
					//Si no existe el usuario
					console.log("no encontrado");
					
					//quitando la capacidad de ocultacion del error para mostrarlo
					var element = document.getElementById("error");
					element.classList.remove("d-none");
					document.getElementById("inputuser").value = "";
					document.getElementById("inputpass").value = "";
					return;
				}
			};
			//ejecutando
			xmlhttp.send();
		}
		
		function ocultaerror(){
			
			var element = document.getElementById("error");
			element.classList.add("d-none");
			
		}
		
	</script>




	<script src="./assets/vendor/jquery/dist/jquery.min.js"></script>
	<script src="./assets/vendor/popper.js/dist/umd/popper.min.js"></script>
	<script src="./assets/vendor/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="./assets/vendor/feather-icons/dist/feather.min.js"></script>
	<script src="./assets/vendor/fontawesome-free/js/all.js"></script>
	<script src="./assets/vendor/fontawesome-free/js/v4-shims.js"></script>
	<script src="./assets/js/rootui.js"></script>
	<script src="./assets/js/rootui-init.js"></script>
</body>
</html>