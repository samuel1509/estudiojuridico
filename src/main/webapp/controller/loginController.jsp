

<%@page import="db.dao.UsuarioDAO"%>
<%@page import="modelo.Usuario"%>

<%
/*
String sql = "SELECT u.id, nombre, clave, roles_id, rol " + "FROM usuarios As u JOIN roles AS r ON roles_id=r.id "
		+ "WHERE nombre='" + usr.getNombre() + "' and clave='" + usr.getClave() + "';";

ConexionMySQL con = new ConexionMySQL();
Statement st = con.consultasMySQL();
ResultSet rs = st.executeQuery(sql);
*/

String nombreUsr = request.getParameter("usuario");
String claveUsr = request.getParameter("clave");

UsuarioDAO usrDAO = new UsuarioDAO();
Usuario usr = usrDAO.validar(nombreUsr, claveUsr);

request.getSession(false).removeAttribute("mensaje");

if (usr != null) {
	//guardo datos usuario usuario logueado
	request.getSession().setAttribute("usuario", usr);
	
	//aun no sale el pase de foto de usuario
	request.getSession().setAttribute("userImg", "https://imgdb.net/11009");
	
	//pasa a backend admin
	if (usr.getNombreRol().equals("admin")) {
		response.sendRedirect("/estudiojuridico/view/gestionEstudio.jsp");
	}
} else {
	request.getSession().setAttribute("mensaje", "Datos incorrectos, ingreselos nuevamente");
	response.sendRedirect("/estudiojuridico/view/login.jsp");
}
//con.cerrarConexion();
%>
