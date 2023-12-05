package modelo;

//ESPECIALIDADES DE LOS ABOGADOS
public enum Especialidad {
	DERECHO_DE_FAMILIA("Derecho de Familia",1),
	DERECHO_PENAL("Derecho Penal",2),
	DERECHO_LABORAL("Derecho Laboral",3),
	DERECHO_ADMINISTRATIVO("Derecho Administrativo",4);
	
	private String especialidad;
	private int orden;
	
	private Especialidad (String especialidad, int orden){
		this.especialidad = especialidad;
		this.orden = orden;
	}

	public String getEspecialidad() {
		return especialidad;
	}

	public int getOrden() {
		return orden;
	}	
}
