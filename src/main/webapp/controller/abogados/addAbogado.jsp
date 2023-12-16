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
		new Especialidad(
				Long.valueOf(request.getParameter("selectEspIdAdd")
				)
			)
		);


//url para volver al listado luego de grabar el nuevo abogado
String url = "/estudiojuridico/controller/abogados/gestionAbogados.jsp";
//mensaje que se pasa por url
String mensaje = "";

try {
	//paso el abogado a abogadoDAO para grabar en la DB
	AbogadoDAO abogadoDAO = new AbogadoDAO();
	
	int insertOk = abogadoDAO.agregar(abogado);

	if (insertOk == 1)
		mensaje = "?mensaje=Abogado%20agregado%20exitosamente";
	else
		mensaje = "?mensaje=No%20se%20pudo%20agregar%20el%20abogado";

} catch (Exception e) {

	mensaje = "?mensaje=No%20se%20pudo%20agregar%20el%20abogado";
	e.printStackTrace();

} finally {
	
	response.sendRedirect(url + mensaje);
}
%>