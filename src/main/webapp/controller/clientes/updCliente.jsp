<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionMySQL"%>
<%
	//le agrego "'"  a los campos que son strong en mysql
	//para no hacerlo al armar la sentencia sql
	String id=request.getParameter("idUpd");
	String nombre="'" + request.getParameter("nombre") + "'";
    String apellido="'" + request.getParameter("apellido") + "'";
    String email="'" + request.getParameter("email") + "'";
    String cuit=request.getParameter("cuit");
    String dni=request.getParameter("dni");
    String domicilio="'" + request.getParameter("domicilio") + "'";
    String info=request.getParameter("info");
	
  //cadena con la instruccion sql
  	String sql="UPDATE clientes SET "+
  			"nombre="+nombre+
  			", apellido="+apellido+
  			", email="+email+
  			", cuit="+cuit+
  			", dni="+dni+
  			", domicilio="+domicilio+
  			" WHERE id="+id;
  	
  	ConexionMySQL con=new ConexionMySQL();
	Statement st=con.consultasMySQL();
		
	try {
		
		Integer updateOk=st.executeUpdate(sql);
		
		if(updateOk==1) {
			response.sendRedirect("../../view/clientes/listadoClientes.jsp?mensaje=Cliente%20actualizado%20exitosamente");			
		} else {
			
			response.sendRedirect("../../view/clientes/listadoClientes.jsp?mensaje="+sql);
		}
	} catch(Exception e) {
		
		response.sendRedirect("../../view/clientes/listadoClientes.jsp?mensaje="+sql);
	}
	
%>


   