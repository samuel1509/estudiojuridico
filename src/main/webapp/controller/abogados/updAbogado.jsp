<%@page import="db.dao.*"%>
<%@page import="modelo.*"%>

<%

//actaulizacion de los datos del un abogado
//cargo datos en abogado
Abogado abogado = new Abogado(
		Long.valueOf(request.getParameter("idUpd")), 
	request.getParameter("nomUpd"), 
	request.getParameter("apeUpd"),
	request.getParameter("emailUpd"), 
	request.getParameter("telUpd"),
	request.getParameter("reseniaUpd"),
	new Especialidad(
			Long.valueOf(request.getParameter("selectEspIdUpd")
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
	int updateOk = abogadoDAO.modificar(abogado);

	if (updateOk == 1)
		mensaje = "?mensaje=Abogado%20actualizado%20exitosamente";
	else
		mensaje = "?mensaje=No%20se%20pudo%20actualizar%20el%20abogado";
} catch (Exception e) {

	mensaje = "?mensaje=No%20se%20pudo%20actualizar%20el%20abogado";
	e.printStackTrace();

} finally {

	response.sendRedirect(url + mensaje);
}
%>