package db.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import db.ConexionMySQL;
import modelo.*;


/**
 * Esta clase se encarga de conectarse a la db y hacer las operaciones CRUD de
 * Abogados
 * 
 */
public class AbogadoDAO {
	
	private ConexionMySQL con;
	private Statement st;
	private String sql;
	private ResultSet rs;

	// constructor, inicia la conexion a db e
	// inicia la variable par ejecutar sql en la db
	public AbogadoDAO() {
		con = new ConexionMySQL();
		st = con.consultasMySQL();
	}

	// agrega un abogado a la db
	public int agregar(Abogado a) {
		
		Integer insertOk = 0;
		
		sql = "INSERT INTO abogados (nombre, apellido, especialidades_id, email, tel, resenia) VALUES ('" +
	
		a.getNombre() + "','" + 
		a.getApellido() + "'," + 
		a.getEspecialidad().getId() + ",'" + 
		a.getEmail() + "','" + 
		a.getTel() + "','" + 
		a.getResenia() + "'); ";
		
		try {
			
			insertOk = st.executeUpdate(sql);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			con.cerrarConexion();
			sql = "";
		}
		return insertOk;
	}

	
	// permite eliminar un abogado en la DB
	public int elimiar(int id) {
		
		Integer deleteOk = 0;
		sql = "DELETE FROM abogados WHERE id=" + id;

		try {
			deleteOk = st.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			con.cerrarConexion();
			sql = "";
		}
		return deleteOk;
	}
	

	// permite modificar un abogado en la db
	public int modificar(Abogado a) {
		Integer updateOk = 0;

		String sql = "UPDATE abogados SET" + 
				" nombre='" + a.getNombre() + "' " + 
				", apellido='" + a.getApellido() + "' " +
				", email='" + a.getEmail() + "' " + 
				", tel='" + a.getTel() + "' " + 
				", resenia='" + a.getResenia() + "' " +
				", especialidades_id=" + a.getEspecialidad().getId() + 
				" WHERE id=" + a.getId() + ";";

		try {
			updateOk = st.executeUpdate(sql);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			con.cerrarConexion();
			sql = "";
		}

		return updateOk;
	}

	// listado de abogado
	public List<Abogado> listar() {
		sql = "SELECT * FROM abogados AS a JOIN especialidades AS e ON especialidades_id=e.id ORDER BY a.id;";
		
		List<Abogado> abogados = new ArrayList<Abogado>();
		
		try {
			rs = st.executeQuery(sql);
			
			while (rs.next()) {
				abogados.add(
						new Abogado(
								rs.getLong("a.id"), 
								rs.getString("nombre"), 
								rs.getString("apellido"), 
								rs.getString("email"),
								rs.getString("tel"),
								rs.getString("resenia"),
								new Especialidad(
										rs.getLong("e.id"), 
										rs.getString("especialidad")
										)
								)
						);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			con.cerrarConexion();
			sql = "";
		}
		return abogados;
	}

	// permite buscar un abogado por apellido
	//
	public List<Abogado> buscarByApellido(String apellido) {
		sql = "SELECT * FROM abogados AS a JOIN especialidades AS e on especialidades_id=e.id WHERE apellido LIKE '%" + 
				apellido + "%' ORDER BY a.id;";
		List<Abogado> abogados = new ArrayList<Abogado>();
		
		try {
			rs = st.executeQuery(sql);
			while (rs.next()) {
				abogados.add(
						new Abogado(
								rs.getLong("a.id"), 
								rs.getString("nombre"), 
								rs.getString("apellido"), 
								rs.getString("email"),
								rs.getString("tel"),
								rs.getString("resenia"),
								new Especialidad(
										rs.getLong("e.id"), 
										rs.getString("especialidad")
										)
								)
						);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			con.cerrarConexion();
			sql = "";
		}
		return abogados;
	}
}