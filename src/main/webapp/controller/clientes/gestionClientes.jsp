

<%@page import="db.dao.ClienteDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionMySQL"%>
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

	String url = "/estudiojuridico/view/clientes/listadoClientes.jsp";
	ClienteDAO clienteDAO=new ClienteDAO();
	List<Cliente>clientes=clienteDAO.listar();
	request.getSession().setAttribute("clientes", clientes);
	response.sendRedirect(url);
%>
