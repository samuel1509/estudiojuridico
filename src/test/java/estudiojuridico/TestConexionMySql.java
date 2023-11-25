package estudiojuridico;

import java.sql.ResultSet;
import java.sql.Statement;

import baseDeDatos.ConexionMySQL;

public class TestConexionMySql {
	
	
	
	public static void main(String[] args) {
		ConexionMySQL conMysql=null;
		try {
			conMysql = new ConexionMySQL();
			System.out.println(conMysql.getConexion());
			Statement st = conMysql.getConexion().createStatement();
			String sql= "SELECT u.id, nombre, clave, roles_id, rol "+
					"FROM usuarios As u JOIN roles AS r ON roles_id=r.id "+
					"WHERE nombre='admin' and clave='123';";
			ResultSet rs=st.executeQuery(sql);
			
			if(rs.next()) {
				System.out.println("Datos encontrados "+
							rs.getString("nombre") +" "+
							rs.getString("rol"));
			}
			else {
				System.out.println("Sin datos");
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		conMysql.cerrarConexion();
	}
}
