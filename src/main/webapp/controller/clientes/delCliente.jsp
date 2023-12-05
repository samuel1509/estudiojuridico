<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionMySQL"%>
<%
	String id=request.getParameter("id");
	
	ConexionMySQL con=new ConexionMySQL();
	Statement st=con.consultasMySQL();

	String url="../..view/clientes/listadoClientes.jsp?mensaje=";
	try {
		Integer deleteOk=st.executeUpdate("DELETE FROM clientes WHERE id="+id);
		
		if(deleteOk==1) {
			
			response.sendRedirect(url+"Cliente%20eliminado%20exitosamente");			
		} else {
			response.sendRedirect(url+"No%20se%20pudo%20eliminar%20el%20cliente");			
		}
	} catch(Exception e) {
		response.sendRedirect(url+"No%20se%20pudo%20eliminar%20el%20cliente");			
	}
	
	con.cerrarConexion();


%>