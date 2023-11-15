package clientes;

//clase modelo con los atributos de la tabla clientes

public class Cliente {

	private int id;
	private String nombre;
	private String apellido;
	private long cuit;
	private long dni;
	private String nombreUsuario;
	private String password;
	private String email;
	private String domicilio;
	
	public Cliente() {
		
	};
	
	public Cliente(
			String nombre,
			String apellido,
			long cuit,
			long dni,
			String nombreUsuario,
			String password,
			String email,
			String domicilio
			){
		
		this.nombre=nombre;
		this.apellido=apellido;
		this.cuit=cuit;
		this.dni=dni;
		this.email=email;
		this.domicilio=domicilio;
		this.nombreUsuario=nombreUsuario ;
		this.password=password;
		this.email=email;
	}
	
	public int getId() {
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


	public long getCuit() {
		return cuit;
	}


	public void setCuit(long cuit) {
		this.cuit = cuit;
	}


	public long getDni() {
		return dni;
	}


	public void setDni(long dni) {
		this.dni = dni;
	}


	public String getNombreUsuario() {
		return nombreUsuario;
	}


	public void setNombreUsuario(String nombreUsuario) {
		this.nombreUsuario = nombreUsuario;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getDomicilio() {
		return domicilio;
	}


	public void setDomicilio(String domicilio) {
		this.domicilio = domicilio;
	}
	

}
