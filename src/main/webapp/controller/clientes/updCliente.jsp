<%-- <%@page import="java.sql.ResultSet"%> --%>
<%-- <%@page import="java.sql.Statement"%> --%>
<%-- <%@page import="db.ConexionMySQL"%> --%>
<%-- <% --%>
// 	//le agrego "'"  a los campos que son strong en mysql
// 	//para no hacerlo al armar la sentencia sql
	
// 	String id=request.getParameter("idUpd");
// 	String nombre="'" + request.getParameter("nombre") + "'";
//     String apellido="'" + request.getParameter("apellido") + "'";
//     String email="'" + request.getParameter("email") + "'";
//     String cuit=request.getParameter("cuit");
//     String dni=request.getParameter("dni");
//     String domicilio="'" + request.getParameter("domicilio") + "'";
//     String info=request.getParameter("info");
	
//   //cadena con la instruccion sql
//   	String sql="UPDATE clientes SET "+
//   			"nombre="+nombre+
//   			", apellido="+apellido+
//   			", email="+email+
//   			", cuit="+cuit+
//   			", dni="+dni+
//   			", domicilio="+domicilio+
//   			" WHERE id="+id;
  	
//   	ConexionMySQL con=new ConexionMySQL();
// 	Statement st=con.consultasMySQL();
		
// 	try {
		
// 		Integer updateOk=st.executeUpdate(sql);
		
// 		if(updateOk==1) {
// 			response.sendRedirect("../../view/clientes/listadoClientes.jsp?mensaje=Cliente%20actualizado%20exitosamente");			
// 		} else {
			
// 			response.sendRedirect("../../view/clientes/listadoClientes.jsp?mensaje="+sql);
// 		}
// 	} catch(Exception e) {
		
// 		response.sendRedirect("../../view/clientes/listadoClientes.jsp?mensaje="+sql);
// 	}
	
<%-- %> --%>




<!-- // String id=request.getParameter("idUpd"); -->
<!-- // String nombre="'" + request.getParameter("nombre") + "'"; -->
<!-- //   String apellido="'" + request.getParameter("apellido") + "'"; -->
<!-- //   String email="'" + request.getParameter("email") + "'"; -->
<!-- //   String cuit=request.getParameter("cuit"); -->
<!-- //   String dni=request.getParameter("dni"); -->
<!-- //   String domicilio="'" + request.getParameter("domicilio") + "'"; -->
<!-- //   String info=request.getParameter("info"); -->

<!-- // //cadena con la instruccion sql -->
<!-- // 	String sql="UPDATE clientes SET "+ -->
<!-- // 			"nombre="+nombre+ -->
<!-- // 			", apellido="+apellido+ -->
<!-- // 			", email="+email+ -->
<!-- // 			", cuit="+cuit+ -->
<!-- // 			", dni="+dni+ -->
<!-- // 			", domicilio="+domicilio+ -->
<!-- // 			" WHERE id="+id; -->
	
<%@page import="db.dao.*"%>
<%@page import="modelo.*"%>

<%


//cargo datos en cliente
Cliente cliente;

cliente = new Cliente(
		Long.valueOf(request.getParameter("idUpd")), 
		request.getParameter("nomUpd"), 
		request.getParameter("apeUpd"),
		Long.valueOf(request.getParameter("cuitUpd")), 
		Long.valueOf(request.getParameter("dniUpd")),
		request.getParameter("emailUpd"), 
		request.getParameter("domUpd")
		);


//url para volver al listado luego de grabar el nuevo cliente
String url = "/estudiojuridico/controller/clientes/gestionClientes.jsp";
//mensaje que se pasa por url
String mensaje = "";

try {
	//paso el cliente a clienteDAO para grabar en la DB
	ClienteDAO clienteDAO = new ClienteDAO();
	int updateOk = clienteDAO.modificar(cliente);

	if (updateOk == 1)
		mensaje = "?mensaje=Cliente%20actualizado%20exitosamente";
	else
		mensaje = "?mensaje=No%20se%20pudo%20actualizar%20el%20cliente";
} catch (Exception e) {

	mensaje = "?mensaje=No%20se%20pudo%20actualizar%20el%20cliente";
	e.printStackTrace();

} finally {

	response.sendRedirect(url + mensaje);
}
%>