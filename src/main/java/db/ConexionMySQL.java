package db;

import java.sql.Connection;  
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class ConexionMySQL {
	private static final String URL = "jdbc:mysql://localhost:3306/estudiodb";
	private static final String USUARIO = "root";
	// private static final String PASS = "";
	private static final String PASS = "root";
	private Connection conexion;

	public ConexionMySQL() {
		try {
			// Cargar el controlador JDBC
			Class.forName("com.mysql.cj.jdbc.Driver");
			// Establecer la conexión con la base de datos
			conexion = DriverManager.getConnection(URL, USUARIO, PASS);
			if (conexion != null) {
				System.out.println("¡Conexión exitosa!");
			}

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public Connection getConexion() {
		return conexion;
	}

	public Statement consultasMySQL() {
		try {
			if (conexion != null && !conexion.isClosed()) {
				return conexion.createStatement();
			} else {
				return null;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public void cerrarConexion() {
		try {
			if (conexion != null && !conexion.isClosed()) {
				conexion.close();
				System.out.println("Conexión cerrada.");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
