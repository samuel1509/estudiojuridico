
<%@page import="modelo.*"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>




<html lang="es">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Abogados</title>


	<!--  links del header-->
	<jsp:include page="../headerLinks.jsp"></jsp:include>
	

</head>

<body>

	<!-- Menu opciones -->
	<jsp:include page="../menu.jsp"></jsp:include>


	<div class="bg-success p-2 text-dark bg-opacity-10">

		<div class="container">

			<h1 class="text-center m-3 fs-3">Listado de Abogados</h1>

			<%
			String mensaje = request.getParameter("mensaje");
			
			if (mensaje != null) {
				out.println("<div class='bg-danger text-center p-1 rounded'>");
				out.println(mensaje);
				out.println("</div>");
			}
			%>

			<div class="d-grid gap-2 d-md-flex justify-content-md-between opacity-75">
				<div class="d-flex">
					<a href='#' data-bs-toggle='modal' data-bs-target='#agregarModal'
						class="btn btn-success"> Agregrar Abogado </a>
				</div>
				
				<!-- Formulario para buscar por apellido -->
				<div class="d-flex">
					<form class="d-flex" role="search" 
						action="/estudiojuridico/controller/abogados/buscarAbogado.jsp" method="GET">
						<input type="hidden" id="filtro" name="filtro" value="filtro">
						<input class="form-control me-2" type="search"
							placeholder="buscar por apellido..." aria-label="Search" id="buscarApe"
							name="buscarApe">

						<button class="btn btn-success" type="submit">Buscar...</button>
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
							<th scope="col">Especialidad</th>
							<th scope="col">Email</th>
							<th scope="col">Telefono</th>
							<th scope="col">Reseña</th>
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
											
											List<Abogado> abogados = (List<Abogado>) request.getSession().getAttribute("abogados");
											
											
																
											
											
											if (abogados != null)
												//foreach
												
												for (Abogado abogado : abogados) {

													out.println("<tr>");

													out.println("<td>");

													out.println(abogado.getId());
													
													out.println("</td>");

													out.println("<td>");
													out.println(abogado.getNombre());
													out.println("</td>");

													out.println("<td>");
													out.println(abogado.getApellido());
													out.println("</td>");

													out.println("<td>");
													out.println(abogado.getEspecialidad().getEspecialidad());
													out.println("</td>");

													out.println("<td>");
													out.println(abogado.getEmail());
													out.println("</td>");

													out.println("<td>");
													out.println(abogado.getTel());
													out.println("</td>");

													out.println("<td>");
													out.println(abogado.getResenia());
													out.println("</td>");

													out.println("<td>");

													out.println("<a href='#' data-bs-toggle='modal' data-bs-target='#updateModal " + "'idUpd='"
															+ abogado.getId() + "' nomUpd='" + abogado.getNombre() + "' apeUpd='" + abogado.getApellido()
															+ "' emailUpd='" + abogado.getEmail() + "' idEspUpd='" + abogado.getEspecialidad().getId()
															+ "' reseniaUpd='" + abogado.getResenia() + "'><i class='bi bi-pencil'></i></a>");

													out.println("<a href='#' data-bs-toggle='modal' data-bs-target='#deleteModal' idDel='"
															+ abogado.getId() + "'><i class='bi bi-trash-fill'></i></a>");
													
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

			<!-- Formulario agregar abogados -->
			<div class="modal fade" id="agregarModal" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h1 class="modal-title fs-5" id="exampleModalLabel">Agregar
								abogado</h1>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<form
								action="/estudiojuridico/controller/abogados/addabogado.jsp"
								method="post">
								<div class="mb-3 text-center">
									<input type="text" class="form-control mb-3" id="nomAdd"
										name="nomAdd" placeholder="Nombre"> 
									<input type="text"
										class="form-control mb-3" id="apeAdd" name="apeAdd"
										placeholder="Apellido"> 
										
									<select class="form-select mb-3" aria-label="Especialidad">
  									<option selected>Especialidad</option>
  									
  									<%
  									if (usr != null && usr.getNombreRol().equals("admin")) {
  										
  										//lista de especialidades para los selects de los formularios Add y Upd
  										
  											@SuppressWarnings("unchecked")
  											List<Especialidad> especialidades = (List<Especialidad>) request.getSession().getAttribute("especialidades");
  											
  										if (especialidades != null)
  											//foreach
  											for (Especialidad e : especialidades) {
  												
  												
  												out.println("<option value="+e.getId()+">"+e.getEspecialidad()+
  													"</option>"
  												);
  											}
  									}
  									%>
									</select>
										
									<input type="text"
										class="form-control mb-3" id="emailAdd" name="emailAdd"
										placeholder="Email"> 
									<input type="tel" pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}"
										class="form-control mb-3" id="telAdd" name="telAdd"
										placeholder="Telefono"> 
										
									<textarea class="form-control mb-3" id="reseniaAdd" name="reseniaAdd"
									placeholder="Resenia"></textarea>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-bs-dismiss="modal">Cancelar</button>
									<button type="submit" class="btn btn-primary">Agregar</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>

			<!-- Formulario borrar abogados -->
			<div class="modal fade" id="deleteModal" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h1 class="modal-title fs-5" id="exampleModalLabel">
								Eliminar abogado</h1>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Cerrar"></button>
						</div>
						<div class="modal-body">

							<form
								action="/estudiojuridico/controller/abogados/delabogado.jsp"
								method="post">

								<div class="mb-3 text-center">
									<label for="recipient-name" class="col-form-label">
										¿Realmente desea eliminar el abogado?</label> <input type="text"
										class="form-control" readonly id="recipient-name" name="idDel">
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-warning"
										data-bs-dismiss="modal">Cancelar</button>
									<button type="submit" class="btn btn-danger">Eliminar</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>


			<!-- Formulario modificar datos abogados -->
			<div class="modal fade" id="updateModal" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h1 class="modal-title fs-5" id="exampleModalLabel">
								Modificar los datos del abogado</h1>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<form
								action="/estudiojuridico/controller/abogados/updabogado.jsp"
								method="post">
								<div class="mb-3 text-center">
									<input type="text" class="form-control" id="idUpd" name="idUpd"
										readonly="readonly"> <input type="text"
										class="form-control" id="nomUpd" name="nomUpd"> <input
										type="text" class="form-control" id="apeUpd" name="apeUpd">
									<input type="text" class="form-control" id="emailUpd"
										name="emailUpd"> <input type="text"
										class="form-control" id="dniUpd" name="dniUpd"> <input
										type="text" class="form-control" id="cuitUpd" name="cuitUpd">
									<input type="text" class="form-control" id="domUpd"
										name="domUpd">
										
										<select class="form-select mb-3" aria-label="Especialidad">
  									<option selected>Especialidad</option>
  									<%
  									if (usr != null && usr.getNombreRol().equals("admin")) {
  										//lista de especialidades para los selects de los formularios Add y Upd
  											@SuppressWarnings("unchecked")
  											List<Especialidad> especialidades = (List<Especialidad>) request.getSession().getAttribute("especialidades");
  										
  										if (especialidades != null)
  											for (Especialidad e :  especialidades) {
  												
  												out.println("<option value="+e.getId()+">"+e.getEspecialidad()+
  													"</option>"
  												);
  											}
  									}
  									%>
									</select>
										
									<input type="text"
										class="form-control mb-3" id="emailUpd" name="emailUpd"
										placeholder="Email"> 
									<input type="tel" pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}"
										class="form-control mb-3" id="telUpd" name="telUpd"
										placeholder="Telefono"> 
										
									<textarea class="form-control mb-3" id="reseniaUpd" name="reseniaUpd"
									placeholder="Resenia"></textarea>

								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-bs-dismiss="modal">Cancelar</button>
									<button type="submit" class="btn btn-primary">Actualizar</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="/estudiojuridico/js/listaabogados.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
</body>
</html>