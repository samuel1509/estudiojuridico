package modelo;

//calse que representa un abogado
public class Abogado {
	private Integer id;
	private String nombre;
	private String apellido;
	private String email;
	private String tel;
	private String resenia;
	private Especialidad especialidad;
	
	public Abogado() {}
	
	/**
	 * @param id
	 * @param nombre
	 * @param apellido
	 * @param email
	 * @param tel
	 * @param resenia
	 * @param especialidad
	 */
	public Abogado(Integer id, String nombre, String apellido, String email, String tel, String resenia,
			Especialidad especialidad) {
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
		this.email = email;
		this.tel = tel;
		this.resenia = resenia;
		this.especialidad = especialidad;
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
	 * @return the apellido
	 */
	public String getApellido() {
		return apellido;
	}

	/**
	 * @param apellido the apellido to set
	 */
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the tel
	 */
	public String getTel() {
		return tel;
	}

	/**
	 * @param tel the tel to set
	 */
	public void setTel(String tel) {
		this.tel = tel;
	}

	/**
	 * @return the resenia
	 */
	public String getResenia() {
		return resenia;
	}

	/**
	 * @param resenia the resenia to set
	 */
	public void setResenia(String resenia) {
		this.resenia = resenia;
	}

	/**
	 * @return the especialidad
	 */
	public Especialidad getEspecialidad() {
		return especialidad;
	}

	/**
	 * @param especialidad the especialidad to set
	 */
	public void setEspecialidad(Especialidad especialidad) {
		this.especialidad = especialidad;
	}
	
}
