
<%@page 
import="java.sql.ResultSet"
import="java.sql.Statement"
import="baseDeDatos.ConexionMySQL"
%>

<%
	//invalido la sesion para seguridad
	request.getSession().invalidate();
	//request.getSession().removeAttribute("mensaje");
	//envio mensaje de sesion finalizada
	request.getSession().setAttribute("mensaje", "Sesion finalizada");
	response.sendRedirect("../index.jsp");	
%>
