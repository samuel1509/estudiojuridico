package modelo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

//representa un expediente de un cliente/abogado
public class Expediente {

	private Integer id;
	private String nroExpte;
	private String descripcion;
	private String juzgado;
	private Date fechaInicio;
	private Date fechaFin;
	private String estado;
	
	private Cliente cliente;
	private Abogado abogado;
	private List<Actuacion> actuaciones;
	
	public Expediente() {}
	
	/**
	 * @param id
	 * @param nroExpte
	 * @param descripcion
	 * @param juzgado
	 * @param fechaInicio
	 * @param fechaFin
	 * @param estado
	 * @param cliente
	 * @param abogado
	 */
	public Expediente(Integer id, String nroExpte, String descripcion, String juzgado, Date fechaInicio, Date fechaFin,
			String estado, Cliente cliente, Abogado abogado) {
		this.id = id;
		this.nroExpte = nroExpte;
		this.descripcion = descripcion;
		this.juzgado = juzgado;
		this.fechaInicio = fechaInicio;
		this.fechaFin = fechaFin;
		this.estado = estado;
		this.cliente = cliente;
		this.abogado = abogado;
		this.actuaciones = new ArrayList<Actuacion>();
	}

	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * @return the nroExpte
	 */
	public String getNroExpte() {
		return nroExpte;
	}

	/**
	 * @param nroExpte the nroExpte to set
	 */
	public void setNroExpte(String nroExpte) {
		this.nroExpte = nroExpte;
	}

	/**
	 * @return the descripcion
	 */
	public String getDescripcion() {
		return descripcion;
	}

	/**
	 * @param descripcion the descripcion to set
	 */
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	/**
	 * @return the juzgado
	 */
	public String getJuzgado() {
		return juzgado;
	}

	/**
	 * @param juzgado the juzgado to set
	 */
	public void setJuzgado(String juzgado) {
		this.juzgado = juzgado;
	}

	/**
	 * @return the fechaInicio
	 */
	public Date getFechaInicio() {
		return fechaInicio;
	}

	/**
	 * @param fechaInicio the fechaInicio to set
	 */
	public void setFechaInicio(Date fechaInicio) {
		this.fechaInicio = fechaInicio;
	}

	/**
	 * @return the fechaFin
	 */
	public Date getFechaFin() {
		return fechaFin;
	}

	/**
	 * @param fechaFin the fechaFin to set
	 */
	public void setFechaFin(Date fechaFin) {
		this.fechaFin = fechaFin;
	}

	/**
	 * @return the estado
	 */
	public String getEstado() {
		return estado;
	}

	/**
	 * @param estado the estado to set
	 */
	public void setEstado(String estado) {
		this.estado = estado;
	}

	/**
	 * @return the cliente
	 */
	public Cliente getCliente() {
		return cliente;
	}

	/**
	 * @param cliente the cliente to set
	 */
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	/**
	 * @return the abogado
	 */
	public Abogado getAbogado() {
		return abogado;
	}

	/**
	 * @param abogado the abogado to set
	 */
	public void setAbogado(Abogado abogado) {
		this.abogado = abogado;
	}

	/**
	 * @return the actuaciones
	 */
	public List<Actuacion> getActuaciones() {
		return actuaciones;
	}

	/**
	 * @param actuaciones the actuaciones to set
	 */
	public void addActuacion(Actuacion a) {
		actuaciones.add(a);
	}
	
	
}
