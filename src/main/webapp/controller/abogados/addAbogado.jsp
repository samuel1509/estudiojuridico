<%@page import="db.dao.*"%>
<%@page import="modelo.*"%>

<%

	
//cargo datos en abogado
Abogado abogado = new Abogado(
		request.getParameter("nomAdd"), 
		request.getParameter("apeAdd"),
		request.getParameter("emailAdd"), 
		request.getParameter("telAdd"),
		request.getParameter("reseniaAdd"),
		new Especialidad(Long.valueOf(
						request.getParameter("espIdAdd"))
				)
		);


//url para volver al listado luego de grabar el nuevo cliente
String url = "/estudiojuridico/controller/clientes/gestionClientes.jsp";
//mensaje que se pasa por url
String mensaje = "";

try {
	//paso el cliente a clienteDAO para grabar en la DB
	ClienteDAO clienteDAO = new ClienteDAO();
	
	int insertOk = clienteDAO.agregar(cliente);

	if (insertOk == 1)
		mensaje = "?mensaje=Cliente%20agregado%20exitosamente";
	else
		mensaje = "?mensaje=No%20se%20pudo%20agregar%20el%20cliente";

} catch (Exception e) {

	mensaje = "?mensaje=No%20se%20pudo%20agregar%20el%20cliente";
	e.printStackTrace();

} finally {
	
	response.sendRedirect(url + mensaje);
}
%>