package modelo;

public class Usuario {
	private Integer id;
	private String nombre;
	private String clave;
	private Rol rol;
	
	public Usuario() {
		
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
	 * @return the nombre
	 */
	public String getNombre() {
		return nombre;
	}
	
	/**
	 * @param nombre the nombre to set
	 */
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	/**
	 * @return the clave
	 */
	public String getClave() {
		return clave;
	}
	
	/**
	 * @param clave the clave to set
	 */
	public void setClave(String clave) {
		this.clave = clave;
	}
	

	/**
	 * @return the rol
	 * @override
	 */
	public Rol getRol() {
		return rol;
	}
	/**
	 * @return the rol
	 * @override
	 */
	public String getNombreRol() {
		return rol.getRol();
	}
	
	/**
	 * @param rol the rol to set
	 */
	public void setRol(Rol rol) {
		this.rol = rol;
	}
	
	

}
