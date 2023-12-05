package estudiojuridico;

import java.sql.ResultSet;

import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import db.ConexionMySQL;
import modelo.Cliente;

public class TestListaClientes {
	//probando modelo de cliente y lista de clientes
	//obtenidas de base de datos

	public static void main(String[] args) {
		List<Cliente> clientes = new ArrayList<>();

		ConexionMySQL con = new ConexionMySQL();

		try {

			String sql = "SELECT * FROM clientes";
			Statement st = con.consultasMySQL();
			ResultSet rs = st.executeQuery(sql);
			
			while (rs.next()) {
				clientes.add(
						new Cliente(
								rs.getLong("id"), 
								rs.getString("nombre"), 
								rs.getString("apellido"),
								rs.getLong("cuit"), 
								rs.getLong("dni"), 
								rs.getString("email"), 
								rs.getString("domicilio")
						));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		for (Cliente cliente : clientes) {
			System.out.println(cliente.toString());
		}
	}

}
