package modelo;


/**
 *Clase que guarda los datos de las especialidades de los abogados
 */
public class Especialidad{
		
	private String especialidad;
	private Long id;
	
	public Especialidad() {};
	
	public Especialidad (Long id, String especialidad){
		this.especialidad = especialidad;
		this.id = id;
	}
	
	public Especialidad(Long id) {
		this.id = id;
	}

	public void setEspecialidad(String especialidad) {
		this.especialidad=especialidad;
	}

	public void setId(Long id) {
		this.id=id;
	}	
	
	public String getEspecialidad() {
		return especialidad;
	}

	public Long getId() {
		return id;
	}	
	
}
