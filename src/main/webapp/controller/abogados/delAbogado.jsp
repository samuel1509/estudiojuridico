<%@page import="db.dao.*"%>
	
<%
//se pasa id del Abogado a borrar
	int id=Integer.valueOf(request.getParameter("idDel"));
	
	AbogadoDAO abogadoDAO=new AbogadoDAO();

	String url="/estudiojuridico/controller/abogados/gestionAbogados.jsp";
	String mensaje="";
	try {
			
		//Integer deleteOk=st.executeUpdate("DELETE FROM clientes WHERE id="+id);
		Integer deleteOk=abogadoDAO.elimiar(id);
		if(deleteOk==1) {
			
			mensaje="?mensaje=Abogado%20eliminado%20exitosamente";			
		} else {
			mensaje="?mensaje=No%20se%20pudo%20eliminar%20el%20abogado";			
		}
	} catch(Exception e) {
			mensaje="?mensaje=No%20se%20pudo%20eliminar%20el%20abogado";			
	}
	
	response.sendRedirect(url+mensaje);
%>