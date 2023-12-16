<%@page import="db.dao.*"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.*"%>

<%
String buscarApe = request.getParameter("buscarApe");
String mensaje=null;
String url = "/estudiojuridico/view/abogados/listadoAbogados.jsp";

List<Abogado> abogados;
AbogadoDAO abogadoDAO = new AbogadoDAO();
abogados = abogadoDAO.buscarByApellido(buscarApe);

//mensaje de error si no se encuentran datos
if(abogados.isEmpty()) 
	mensaje="No se encotraron abogados";

//agrego el mensaje como parametro
if (mensaje != null)
url = url + "?mensaje=" + mensaje;

request.getSession().setAttribute("abogados", abogados);

response.sendRedirect(url);
%>
