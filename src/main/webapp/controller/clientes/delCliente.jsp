<%@page import="db.dao.ClienteDAO"%>


<%
	int id=Integer.valueOf(request.getParameter("idDel"));
	
	
	//ConexionMySQL con=new ConexionMySQL();
	//Statement st=con.consultasMySQL();
	
	ClienteDAO clienteDAO=new ClienteDAO();

	String url="/estudiojuridico/controller/clientes/gestionClientes.jsp";
	String mensaje="";
	try {
			
		//Integer deleteOk=st.executeUpdate("DELETE FROM clientes WHERE id="+id);
		Integer deleteOk=clienteDAO.elimiar(id);
		if(deleteOk==1) {
			
			mensaje="?mensaje=Cliente%20eliminado%20exitosamente";			
		} else {
			mensaje="?mensaje=No%20se%20pudo%20eliminar%20el%20cliente";			
		}
	} catch(Exception e) {
			mensaje="?mensaje=No%20se%20pudo%20eliminar%20el%20cliente";			
	}
	
	response.sendRedirect(url+mensaje);
%>