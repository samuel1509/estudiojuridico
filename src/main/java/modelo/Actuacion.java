package modelo;

import java.util.Date;

public class Actuacion {
	private Integer id;
 	private String descripcipon;
	private Date fecha;
	
	
	public Actuacion(){}
	
	/**
	 * @param id
	 * @param descripcipon
	 * @param fecha
	 */
	public Actuacion(Integer id, String descripcipon, Date fecha) {
		this.id = id;
		this.descripcipon = descripcipon;
		this.fecha = fecha;
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
	 * @return the descripcipon
	 */
	public String getDescripcipon() {
		return descripcipon;
	}

	/**
	 * @param descripcipon the descripcipon to set
	 */
	public void setDescripcipon(String descripcipon) {
		this.descripcipon = descripcipon;
	}

	/**
	 * @return the fecha
	 */
	public Date getFecha() {
		return fecha;
	}

	/**
	 * @param fecha the fecha to set
	 */
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	
}
