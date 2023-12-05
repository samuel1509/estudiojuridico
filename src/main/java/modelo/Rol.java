package modelo;


//rol de un usuario
public class Rol {
	private Integer id;
	private String rol;
	/**
	 * @param id
	 * @param rol
	 */
	public Rol(Integer id, String rol) {
		this.id = id;
		this.rol = rol;
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
	 * @return the rol
	 */
	public String getRol() {
		return rol;
	}
	/**
	 * @param rol the rol to set
	 */
	public void setRol(String rol) {
		this.rol = rol;
	}
	
	

}
