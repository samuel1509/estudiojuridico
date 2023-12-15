<%@page import="db.dao.*"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.*"%>

<%
	String mensaje=request.getParameter("mensaje");
//url de respuesta que es una vista 
	String url = "/estudiojuridico/view/abogados/listadoAbogados.jsp";
	
	List<Abogado>abogados;
	
	List<Especialidad>esp;
	
	//agrego el mensaje como parametro
	if(mensaje!=null)
	 	url = url+"?mensaje="+mensaje;
	
	AbogadoDAO abogadoDAO=new AbogadoDAO();
	EspecialidadDAO espDAO=new EspecialidadDAO();
	
	abogados=abogadoDAO.listar();
	
	esp=espDAO.listar();
	
	//preparo vista 
	request.getSession().setAttribute("abogados", abogados);
	request.getSession().setAttribute("especialidades", esp);
	
	response.sendRedirect(url);
	
%>