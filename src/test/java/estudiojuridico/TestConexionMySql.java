package estudiojuridico;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import db.ConexionMySQL;
import modelo.Cliente;

public class TestConexionMySql {
	
	
	
	public static void main(String[] args) {
		ConexionMySQL conMysql=null;
		try {
			conMysql = new ConexionMySQL();
			System.out.println(conMysql.getConexion());
			Statement st = conMysql.getConexion().createStatement();
			String sql= "SELECT * FROM clientes ";
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
	
	
	/*
	 *import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        List<Cliente> clientes = obtenerClientesDesdeBD();

        // Ahora, puedes trabajar con la lista de clientes como desees
        for (Cliente cliente : clientes) {
            System.out.println(cliente);
        }
    }

    private static List<Cliente> obtenerClientesDesdeBD() {
        List<Cliente> clientes = null;

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/tu_base_de_datos", "usuario", "contraseña")) {
            QueryRunner queryRunner = new QueryRunner();
            String sql = "SELECT id, nombre, apellido FROM clientes";

            // Utiliza el BeanListHandler para mapear automáticamente filas a objetos Cliente
            clientes = queryRunner.query(connection, sql, new BeanListHandler<>(Cliente.class));
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Asegúrate de cerrar la conexión de manera segura
            DbUtils.closeQuietly(connection);
        }

        return clientes;
    }
}
 
	 * */
	
	
}
