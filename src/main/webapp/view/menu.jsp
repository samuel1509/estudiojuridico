<%@page import="modelo.*"%>
<nav class="navbar navbar-expand-md bg-body-tertiary">
	<div class="container-fluid">
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">

			<ul class="navbar-nav me-auto mb-2 mb-lg-0">

				<li class="nav-item"><a
					class="nav-link btn btn-outline-primary"
					href="/estudiojuridico/controller/clientes/gestionClientes.jsp"
					role="button" aria-expanded="false">Clientes </a></li>
				<li class="nav-item"><a
					class="nav-link btn btn-outline-primary"
					href="/estudiojuridico/controller/abogados/gestionAbogados.jsp"
					role="button" aria-expanded="false">Abogados </a></li>

				<li class="nav-item"><a
					class="nav-link btn btn-outline-primary"
					href="/estudiojuridico/controller/expedientes/gestionExpedientes.jsp"
					role="button" aria-expanded="false"> Expedientes </a></li>

				<li class="nav-item"><a
					class="nav-link btn btn-outline-primary"
					href="/estudiojuridico/controller/usuarios/gestionUsuarios.jsp"
					role="button" aria-expanded="false"> Usuarios </a></li>
			</ul>
			
			<div class="d-flex">
			
				<form class="d-flex" role="search">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Buscar</button>
				</form>
				
				
				<a class="btn btn-outline-secondary text-danger"
					href="/estudiojuridico/controller/logoutController.jsp"
					role="button"> <i class="bi bi-door-closed-fill">Salir</i>

				</a>
				<div class="rounded-5 bg-secondary-subtle text-primary p-2 text-uppercase">
					<i class="bi bi-person-circle"></i>
					<span ">
					<%
					HttpSession sesion = request.getSession(false); // Si pasas false como argumento, no creará una nueva sesión si no existe
					Usuario usr = (Usuario) sesion.getAttribute("usuario");
					//Verificar si la sesión es válida

					if (usr != null) {
						out.println(usr.getNombre());
					}
					%>
					</span>
				</div>
				
			</div>
		</div>

	</div>
</nav>