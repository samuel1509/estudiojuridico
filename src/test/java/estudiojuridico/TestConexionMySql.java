package estudiojuridico;

import baseDeDatos.ConexionMySQL;

public class TestConexionMySql {
	
	
	
	public static void main(String[] args) {
		ConexionMySQL conMysql;
		try {
			conMysql = new ConexionMySQL();
			System.out.println(conMysql.getConexion());
			conMysql.cerrarConexion();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
