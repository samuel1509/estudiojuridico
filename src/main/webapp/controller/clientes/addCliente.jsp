<%@page import="db.ConexionMySQL"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionMySQL"%>
<%
	
	
	String nombre=request.getParameter("nomAdd");
	String apellido=request.getParameter("apeAdd");
	String email=request.getParameter("emailAdd");
	String dni=request.getParameter("dniAdd");
	String cuit=request.getParameter("cuitAdd");
	String domicilio=request.getParameter("domAdd");
	
	
	
	ConexionMySQL con=new ConexionMySQL();
	Statement st=con.consultasMySQL();
	
	try {
		Integer insertOk=st.executeUpdate("INSERT INTO clientes (nombre, apellido, email, dni, cuit, domicilio) VALUES ('"+
	nombre+"','"+apellido+"','"+email+"','"+dni+"','"+cuit+"','"+domicilio+"') ");
		
		if(insertOk==1) {
			response.sendRedirect("../view/listadoClientes.jsp?mensaje=Cliente%20agregado%20exitosamente");			
		} else {
			response.sendRedirect("../view/listadoClientes.jsp?mensaje=No%20se%20pudo%20agregar%20el%20cliente");			
		}
	} catch(Exception e) {
		
		response.sendRedirect("../view/listadoClientes.jsp?mensaje=No%20se%20pudo%20agregar%20el%20cliente");
		e.printStackTrace();
	}
	


%>