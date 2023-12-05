package db.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import db.ConexionMySQL;
import modelo.Cliente;

public class ClienteDAO {
	private ConexionMySQL con;
	private Statement st;
	private String sql;

	public ClienteDAO() {
		con = new ConexionMySQL();
		st = con.consultasMySQL();
	}

	public int agregar() {

		return 0;
	}

	public int elimiar() {
		return 0;
	}

	public int modificar() {
		return 0;
	}

	public List<Cliente> listar() {

		st = con.consultasMySQL();
		sql="SELECT * FROM clientes";
		List<Cliente> clientes = new ArrayList<Cliente>();

		try {
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
				clientes.add(new Cliente(rs.getLong("id"), rs.getString("nombre"), rs.getString("apellido"), rs.getLong("cuit"),
						rs.getLong("dni"), rs.getString("email"), rs.getString("domicilio")));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			con.cerrarConexion();
		}
		return clientes;
	}

	public Cliente buscar() {
		return null;
	}
}
