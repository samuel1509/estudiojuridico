package db.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import db.ConexionMySQL;
import modelo.Rol;
import modelo.Usuario;

public class UsuarioDAO {
	private ConexionMySQL con;
	private Statement st;
	private String sql;
	private ResultSet rs;
	
	public UsuarioDAO() {
		con = new ConexionMySQL();
		st = con.consultasMySQL();
	}
	
	public Usuario validar(String nombre,String clave) {
		Usuario usr=null;
		
		sql = "SELECT u.id, nombre, clave, roles_id, rol " + 
					"FROM usuarios As u JOIN roles AS r ON roles_id=r.id "+
					"WHERE nombre='" + nombre + "' and clave='" + clave + "';";
		
		try {
			
			rs = st.executeQuery(sql);
			
			if(rs.next()) {
				
			usr=new Usuario();
			
			usr.setId(rs.getInt("id"));
			usr.setNombre(rs.getString("nombre"));
			usr.setRol(new Rol(rs.getInt("roles_id"),rs.getString("rol")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			con.cerrarConexion();
		}
		
		return usr;
	}
	
}
