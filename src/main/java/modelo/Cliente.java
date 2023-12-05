package modelo;

//clase modelo con los atributos de la tabla clientes

public class Cliente {

	private Long id;
	private String nombre;
	private String apellido;
	private Long cuit;
	private Long dni;
	private String email;
	private String domicilio;
	
	public Cliente() {
		
	};
	
	public Cliente(
			String nombre,
			String apellido,
			Long cuit,
			Long dni,
			String email,
			String domicilio
			){
		
		this.nombre=nombre;
		this.apellido=apellido;
		this.cuit=cuit;
		this.dni=dni;
		this.email=email;
		this.domicilio=domicilio;
	}
	
	public Cliente(
			Long id,
			String nombre,
			String apellido,
			Long cuit,
			Long dni,
			String email,
			String domicilio
			){
		this.id=id;
		this.nombre=nombre;
		this.apellido=apellido;
		this.cuit=cuit;
		this.dni=dni;
		this.email=email;
		this.domicilio=domicilio;
	}
	
	public Long getId() {
		return id;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getApellido() {
		return apellido;
	}


	public void setApellido(String apellido) {
		this.apellido = apellido;
	}


	public Long getCuit() {
		return cuit;
	}


	public void setCuit(Long cuit) {
		this.cuit = cuit;
	}


	public Long getDni() {
		return dni;
	}


	public void setDni(Long dni) {
		this.dni = dni;
	}


	public String getEmail() {
		return email;
	}


	public void setemail(String email) {
		this.email = email;
	}


	public String getDomicilio() {
		return domicilio;
	}


	public void setDomicilio(String domicilio) {
		this.domicilio = domicilio;
	}

	@Override
	public String toString() {
		return "Cliente [id=" + id + ", nombre=" + nombre + ", apellido=" + apellido + ", cuit=" + cuit + ", dni=" + dni
				+ ", email=" + email + ", domicilio=" + domicilio + "]";
	}
	
}
