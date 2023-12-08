<%@page import="db.dao.*"%>
<%@page import="modelo.*"%>

<%
/*
String nombre=request.getParameter("nomAdd");
String apellido=request.getParameter("apeAdd");
String email=request.getParameter("emailAdd");
String dni=request.getParameter("dniAdd");
String cuit=request.getParameter("cuitAdd");
String domicilio=request.getParameter("domAdd");
//ConexionMySQL con=new ConexionMySQL();
//Statement st=con.consultasMySQL();

	Integer insertOk=st.executeUpdate("INSERT INTO clientes (nombre, apellido, email, dni, cuit, domicilio) VALUES ('"+
	nombre+"','"+apellido+"','"+email+"','"+dni+"','"+cuit+"','"+domicilio+"') ");
	*/

	
//cargo datos en cliente
Cliente cliente = new Cliente(
		request.getParameter("nomAdd"), 
		request.getParameter("apeAdd"),
		Long.valueOf(request.getParameter("cuitAdd")),
		Long.valueOf(request.getParameter("dniAdd")),
		request.getParameter("emailAdd"), 
		request.getParameter("domAdd"));

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