
<%@page 
import="java.sql.ResultSet"
import="java.sql.Statement"
import="baseDeDatos.ConexionMySQL"
%>

<%
	String usuario=request.getParameter("usuario");
	String clave=request.getParameter("clave");
	

	String sql= "SELECT u.id, nombre, clave, roles_id, rol "+
				"FROM usuarios As u JOIN roles AS r ON roles_id=r.id "+
				"WHERE nombre='"+usuario+"' and clave='"+clave+"';";
	
	ConexionMySQL con=new ConexionMySQL();
	
	Statement st=con.getConexion().createStatement();
	
	ResultSet rs=st.executeQuery(sql);
	request.getSession().removeAttribute("mensaje");
	if(rs.next()) {
		if(rs.getString("rol").equals("admin")){
			//guardo datos usuario usuario logueado
			request.getSession().setAttribute("id",rs.getInt("u.id"));
			response.sendRedirect("../paginas/gestionEstudio.jsp");	
		} else {
			//guardo datos usuario cliente logueado
			request.getSession().setAttribute("id",rs.getInt("u.id"));
			response.sendRedirect("../index.jsp");	
		}
	} else {
		
		request.getSession().setAttribute("mensaje", "Datos incorrectos, ingreselos nuevamente");
		response.sendRedirect("../paginas/login.jsp");	
	}
	con.cerrarConexion();

%>
