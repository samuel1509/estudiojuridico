
<%@page import="modelo.*"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>




<html lang="es">

<head>
<meta charset="utf-8">
<meta
	name="viewport"
	content="width=device-width, initial-scale=1">
<title>Clientes</title>

<!--  links del header-->
<jsp:include page="../headerLinks.jsp"></jsp:include>

</head>

<body>

	<!-- Menu opciones -->
	<jsp:include page="../menu.jsp"></jsp:include>


	<div class="bg-success p-2 text-dark bg-opacity-10">

		<div class="container">

			<h1 class="text-center m-3 fs-3">Listado de Clientes</h1>

			<%
			String mensaje = request.getParameter("mensaje");
			if (mensaje != null) {
				out.println("<div class='bg-danger text-center p-1 rounded'>");
				out.println(mensaje);
				out.println("</div>");
			}
			%>

			<div class="d-grid gap-2 d-md-flex justify-content-md-between opacity-">
				<div class="d-flex">
					<a
						href='#'
						data-bs-toggle='modal'
						data-bs-target='#agregarModal'
						class="btn btn-success"> Agregrar Cliente </a>
				</div>
				<!-- Formulario para buscar por apellido -->
				<div class="d-flex">
					<form
						class="d-flex"
						role="search"
						action="/estudiojuridico/controller/clientes/buscarCliente.jsp"
						method="GET">
						<input
							type="hidden"
							id="filtro"
							name="filtro"
							value="filtro"> <input
							class="form-control me-2"
							type="search"
							placeholder="buscar por apellido..."
							aria-label="Search"
							id="buscarApe"
							name="buscarApe">

						<button
							class="btn btn-success"
							type="submit">Buscar...</button>
					</form>
				</div>

			</div>



			<br>

			<div class="table-responsive">

				<table class="table text-center opacity-75">
					<thead class="table-dark">
						<tr>
							<th scope="col">#ID</th>
							<th scope="col">Nombre</th>
							<th scope="col">Apellido</th>
							<th scope="col">Email</th>
							<th scope="col">DNI</th>
							<th scope="col">CUIT</th>
							<th scope="col">Domicilio</th>
							<th scope="col">Acciones</th>
						</tr>
					</thead>

					<tbody>

						<%
						HttpSession sesion = request.getSession(false); // Si pasas false como argumento, no creará una nueva sesión si no existe

						Usuario usr = (Usuario) sesion.getAttribute("usuario");

						//Verificar si la sesión es válida
						if (usr != null && usr.getNombreRol().equals("admin")) {

							@SuppressWarnings("unchecked")
							List<Cliente> clientes = (List<Cliente>) request.getSession().getAttribute("clientes");

							if (clientes != null)
								for (Cliente cliente : (List<Cliente>) clientes) {
							out.println("<tr>");

							out.println("<td>");

							out.println(cliente.getId());
							out.println("</td>");

							out.println("<td>");
							out.println(cliente.getNombre());
							out.println("</td>");

							out.println("<td>");
							out.println(cliente.getApellido());
							out.println("</td>");

							out.println("<td>");
							out.println(cliente.getEmail());
							out.println("</td>");

							out.println("<td>");
							out.println(cliente.getDni());
							out.println("</td>");

							out.println("<td>");
							out.println(cliente.getCuit());
							out.println("</td>");

							out.println("<td>");
							out.println(cliente.getDomicilio());
							out.println("</td>");

							out.println("<td>");

							out.println("<a href='#' data-bs-toggle='modal' data-bs-target='#updateModal " + "'idUpd='" + cliente.getId()
									+ "' nomUpd='" + cliente.getNombre() + "' apeUpd='" + cliente.getApellido() + "' emailUpd='"
									+ cliente.getEmail() + "' dniUpd='" + cliente.getDni() + "' cuitUpd='" + cliente.getCuit() + "' domUpd='"
									+ cliente.getDomicilio() + "'><i class='bi bi-pencil'></i></a>");

							out.println("<a href='#' data-bs-toggle='modal' data-bs-target='#deleteModal' idDel='" + cliente.getId()
									+ "'><i class='bi bi-trash-fill'></i></a>");
							out.println("</td>");
							out.println("</tr>");
								}
							else {
								out.println("lista no cargada");
							}
						} else {
							String url = "/estudiojuridico/view/login.jsp";

							response.sendRedirect(url);
						}
						%>
					</tbody>
				</table>
			</div>

			<!-- Formulario agregar clientes -->
			<div
				class="modal fade"
				id="agregarModal"
				tabindex="-1"
				aria-labelledby="exampleModalLabel"
				aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h1
								class="modal-title fs-5"
								id="exampleModalLabel">Agregar cliente</h1>
							<button
								type="button"
								class="btn-close"
								data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">

							<form
								action="/estudiojuridico/controller/clientes/addCliente.jsp"
								method="post"
								class="needs-validation">
								<div class="mb-3 text-center">
									<input
										type="text"
										class="form-control mb-3"
										id="nomAdd"
										name="nomAdd"
										placeholder="Nombre"
										required> <input
										type="text"
										class="form-control mb-3"
										id="apeAdd"
										name="apeAdd"
										placeholder="Apellido "
										required> <input
										type="text"
										class="form-control mb-3"
										id="emailAdd"
										name="emailAdd"
										placeholder="Email"
										required> <input
										type="text"
										class="form-control mb-3"
										id="dniAdd"
										name="dniAdd"
										placeholder="DNI"
										required> <input
										type="text"
										class="form-control mb-3"
										id="cuitAdd"
										name="cuitAdd"
										placeholder="CUIT"
										required> <input
										type="text"
										class="form-control mb-3"
										id="domAdd"
										name="domAdd"
										placeholder="Domicilio"
										required>

								</div>
								<div class="modal-footer">
									<button
										type="button"
										class="btn btn-secondary"
										data-bs-dismiss="modal">Cancelar</button>
									<button
										type="submit"
										class="btn btn-primary">Agregar</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>

			<!-- Formulario borrar clientes -->
			<div
				class="modal fade"
				id="deleteModal"
				tabindex="-1"
				aria-labelledby="exampleModalLabel"
				aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h1
								class="modal-title fs-5"
								id="exampleModalLabel">Eliminar cliente</h1>
							<button
								type="button"
								class="btn-close"
								data-bs-dismiss="modal"
								aria-label="Cerrar"></button>
						</div>
						<div class="modal-body">

							<form
								action="/estudiojuridico/controller/clientes/delCliente.jsp"
								method="post">

								<div class="mb-3 text-center">
									<label
										for="recipient-name"
										class="col-form-label"> ¿Realmente desea eliminar
										el cliente?</label> <input
										type="text"
										class="form-control"
										readonly
										id="recipient-name"
										name="idDel">
								</div>
								<div class="modal-footer">
									<button
										type="button"
										class="btn btn-warning"
										data-bs-dismiss="modal">Cancelar</button>
									<button
										type="submit"
										class="btn btn-danger">Eliminar</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>


			<!-- Formulario modificar datos clientes -->
			<div
				class="modal fade"
				id="updateModal"
				tabindex="-1"
				aria-labelledby="exampleModalLabel"
				aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h1
								class="modal-title fs-5"
								id="exampleModalLabel">Modificar los datos del cliente</h1>
							<button
								type="button"
								class="btn-close"
								data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<form
								action="/estudiojuridico/controller/clientes/updCliente.jsp"
								method="post">
								<div class="mb-3 text-center">
									<input
										type="text"
										class="form-control"
										id="idUpd"
										name="idUpd"
										readonly="readonly"> 
										<input
										type="text"
										class="form-control"
										id="nomUpd"
										name="nomUpd"
										placeholder="Nombre"
										required> 
										<input
										type="text"
										class="form-control"
										id="apeUpd"
										name="apeUpd"
										placeholder="Apellido"
										required> 
										<input
										type="text"
										class="form-control"
										id="emailUpd"
										name="emailUpd"
										placeholder="Email"
										required> 
										<input
										type="text"
										class="form-control"
										id="dniUpd"
										name="dniUpd"
										placeholder="DNI"
										required> 
										<input
										type="text"
										class="form-control"
										id="cuitUpd"
										name="cuitUpd"
										placeholder="CUIT"
										required> 
										<input
										type="text"
										class="form-control"
										id="domUpd"
										name="domUpd"
										placeholder="Domicilio"
										required>
								</div>
								<div class="modal-footer">
									<button
										type="button"
										class="btn btn-secondary"
										data-bs-dismiss="modal">Cancelar</button>
									<button
										type="submit"
										class="btn btn-primary">Actualizar</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="/estudiojuridico/js/listaClientes.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
</body>
</html>