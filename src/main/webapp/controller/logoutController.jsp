<%
	//invalido la sesion para seguridad
	request.getSession().invalidate();
	//request.getSession().removeAttribute("mensaje");
	//envio mensaje de sesion finalizada
	request.getSession().setAttribute("mensaje", "Sesion finalizada");
	response.sendRedirect("/estudiojuridico/index.jsp");	
%>
