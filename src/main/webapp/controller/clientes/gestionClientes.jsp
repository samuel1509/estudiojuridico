<%@page import="db.dao.ClienteDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Cliente"%>

<%
/*
String sql = "SELECT * FROM clientes";
ConexionMySQL con = new ConexionMySQL();

try {
	Statement st = con.consultasMySQL();
	ResultSet rs = st.executeQuery(sql);

	while (rs.next()) {
		clientes.add(new Cliente(rs.getLong("id"), rs.getString("nombre"), rs.getString("apellido"), rs.getLong("cuit"),
		rs.getLong("dni"), rs.getString("email"), rs.getString("domicilio")));
	}	
} catch (Exception e) {
	e.printStackTrace();
}
*/

	String mensaje=request.getParameter("mensaje");
	
	String url = "/estudiojuridico/view/clientes/listadoClientes.jsp";
	
	
	List<Cliente>clientes;
	//agrego el mensaje como parametro
	if(mensaje!=null)
	 	url = url+"?mensaje="+mensaje;
	
	
	ClienteDAO clienteDAO=new ClienteDAO();

		clientes=clienteDAO.listar();

		
	
	
	request.getSession().setAttribute("clientes", clientes);
	
	response.sendRedirect(url);
%>
