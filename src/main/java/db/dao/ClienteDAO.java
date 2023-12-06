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
	private ResultSet rs;

	public ClienteDAO() {
		con = new ConexionMySQL();
		st = con.consultasMySQL();
	}

	
	public int agregar(Cliente c) {
		Integer insertOk=0;
		sql="INSERT INTO clientes (nombre, apellido, email, dni, cuit, domicilio) VALUES ('"+
				c.getNombre()+"','"+
				c.getApellido()+"','"+
				c.getEmail()+"','"+
				c.getDni()+"','"+
				c.getCuit()+"','"+
				c.getDomicilio()+"') ";
		try {
			insertOk=st.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		sql="";
		return insertOk;
	}

	public int elimiar(int id) {
		
		Integer deleteOk=0;
		sql="DELETE FROM clientes WHERE id="+id;
				
		try {
			deleteOk=st.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		sql="";
		return deleteOk;
		
	}

	public int modificar(Cliente c) {
		Integer updateOk=0;
		
		String sql="UPDATE clientes SET"+
 			" nombre='"+c.getNombre()+"' "+
 			", apellido='"+c.getApellido()+"' "+
 			", email='"+c.getEmail()+"' "+
 			", cuit="+c.getCuit()+
		  ", dni="+c.getDni()+
 			", domicilio='"+c.getDomicilio()+"' "+ 			
 			" WHERE id="+c.getId();
		
				
		try {
			updateOk=st.executeUpdate(sql);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		sql="";
		return updateOk;
	}

	//listado de clientes
	public List<Cliente> listar() {
		sql="SELECT * FROM clientes;";
		
		List<Cliente> clientes = new ArrayList<Cliente>();

		try {
			
			 rs=st.executeQuery(sql);
			 
			while (rs.next()) {
				clientes.add(
						new Cliente(rs.getLong("id"),
						rs.getString("nombre"), 
						rs.getString("apellido"), 
						rs.getLong("cuit"),
						rs.getLong("dni"), 
						rs.getString("email"), 
						rs.getString("domicilio"))
						);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		finally {
			con.cerrarConexion();
			sql="";
		}
		return clientes;
	}

	
	
	public Cliente buscar() {
		return null;
	}
}
