package db.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import db.ConexionMySQL;
import modelo.*;

/**
 * Esta clase se encarga de conectarse a la db y hacer las operaciones 
 * consulta de Especialidades
 * 
 */
public class EspecialidadDAO {
	private ConexionMySQL con;
	private Statement st;
	private String sql;
	private ResultSet rs;

	// constructor, inicia la conexion a db e
	// inicia la variable par ejecutar sql en la db
	public EspecialidadDAO() {
		con = new ConexionMySQL();
		st = con.consultasMySQL();
	}

	// listado de especialidades
	public List<Especialidad> listar() {
		sql = "SELECT * FROM especialidades;";
		List<Especialidad> especialidades = new ArrayList<Especialidad>();
		try {
			rs = st.executeQuery(sql);
			while (rs.next()) {
				especialidades.add(
						new Especialidad(
								rs.getLong("id"), 
								rs.getString("especialidad")
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
		return especialidades;
	}

	// permite buscar especialidad
	public List<Especialidad> buscarEspecialidad(String especialidad) {
		sql = "SELECT * FROM especialidades AS e WHERE apellido LIKE '%" + especialidad + "%';";
		List<Especialidad> especialidades = new ArrayList<Especialidad>();
		try {
			rs = st.executeQuery(sql);
			while (rs.next()) {
				especialidades.add(
						new Especialidad(
								rs.getLong("e.id"), 
								rs.getString("especialidad")
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
		return especialidades;
	}

	// permite buscar especialidad por id
	public Especialidad buscarById(Long id) {
		sql = "SELECT * FROM especialidades AS e WHERE id=" + id + ";";
		Especialidad especialidad = null;
		try {
			rs = st.executeQuery(sql);
			while (rs.next()) {
				especialidad = new Especialidad(rs.getLong("e.id"), rs.getString("especialidad"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			con.cerrarConexion();
			sql = "";
		}
		return especialidad;
	}
}
