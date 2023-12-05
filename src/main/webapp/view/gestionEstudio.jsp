
<%@page import="modelo.*"%>
<!doctype html>
<html lang="es">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Gestion Estudio</title>

<!-- bootstrap-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous" />

<!-- iconos bootstrap-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" />

<!--estilos propios-->
<link rel="stylesheet" href="/estudiojuridico/css/style.css" />
</head>

<body>
	<!-- Menu -->
	<jsp:include page="menu.jsp"></jsp:include>

	<div class="container text-center">
		<h1>Bienvenido a Gestion de Estudio - 

		<%
		HttpSession sesion = request.getSession(false); // Si pasas false como argumento, no creará una nueva sesión si no existe
		Usuario usr = (Usuario) sesion.getAttribute("usuario");
		//Verificar si la sesión es válida
		if (usr != null) {
			out.println(usr.getNombre());
		}
		%>
		</h1>
	</div>
	<!-- 
	<nav>
		<div class="container-flex text-center">
			<div class="row">
				<div class="col-sm-8 text-left mb-1">
					<a class="btn btn-secondary" href="../paginas/usuarios/listaUsuarios.jsp" role="button">
						Usuarios</a>
					<a class="btn btn-secondary" href="../paginas/clientes/listaClientes.jsp" role="button">
						Clientes</a>
					<a class="btn btn-secondary" href="../paginas/expedientes/listaExpedientes.jsp"
						role="button">
						Expedientes</a>
				</div>
				<div class="col-sm-4 text-right mb-1">
					<a class="btn btn-secondary" href="../controlador/logoutController.jsp" role="button">
						<i class="bi bi-person-square"> Logout</i>
					</a>
				</div>
			</div>
		</div>
	</nav>
	
-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>

</body>


</html>