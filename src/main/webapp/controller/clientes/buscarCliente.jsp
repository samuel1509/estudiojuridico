<%@page import="db.dao.ClienteDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Cliente"%>

<%
String buscarApe = request.getParameter("buscarApe");
String mensaje=null;
String url = "/estudiojuridico/view/clientes/listadoClientes.jsp";

List<Cliente> clientes;
ClienteDAO clienteDAO = new ClienteDAO();
clientes = clienteDAO.buscarByApellido(buscarApe);

//mensaje de error si no s eencuentran datos
if(clientes.isEmpty()) 
	mensaje="No se encotraron clientes";

//agrego el mensaje como parametro
if (mensaje != null)
url = url + "?mensaje=" + mensaje;

request.getSession().setAttribute("clientes", clientes);

response.sendRedirect(url);
%>
