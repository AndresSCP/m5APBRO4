package clases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Capacitacion {

	private int id;
	private static int idSiguiente;
	private long rut;
	private String dia;
	private String hora;
	private String lugar;
	private String duracion;
	private int cantidadAsistentes;

	
	/** metodo constructor vacio*/
	public Capacitacion() {
		super();
		++idSiguiente;
		id = idSiguiente;
	}
	
	/** metodo constructor con los atributos como parametros */
	public Capacitacion(long rut, String dia, String hora, String lugar, String duracion, int cantidadAsistentes ) {
		++idSiguiente;
		this.id = idSiguiente;
		this.rut = rut;
		this.dia = dia;
		this.hora = hora;
		this.lugar = lugar;
		this.duracion = duracion;
		this.cantidadAsistentes = cantidadAsistentes;
	}
	
	/**@param IDS
	 * Obligatorio
	 * SETTER Y GETTER */
	public void setId() {
//		//MÉTODO INNECESARIO ID AUTOINCREMENTAL
//		String id = Utilidades.ingresarObligatorio("Ingrese el ID de la capacitacion");
//			do {
//				if(id.length() != 0) {
//					this.id = Integer.parseInt(id);
//					break;
//				}
//			}while(true);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public long getRut() {
		return rut;
	}

	public void setRut(long rut) {
		this.rut = rut;
	}

	public String getDia() {
		return dia;
	}

	public void setDia(String dia) {
		this.dia = dia;
	}

	public String getHora() {
		return hora;
	}

	public void setHora(String hora) {
		this.hora = hora;
	}

	public String getLugar() {
		return lugar;
	}

	public void setLugar(String lugar) {
		this.lugar = lugar;
	}

	public String getDuracion() {
		return duracion;
	}

	public void setDuracion(String duracion) {
		this.duracion = duracion;
	}

	public int getCantidadAsistentes() {
		return cantidadAsistentes;
	}

	public void setCantidadAsistentes(int cantidadAsistentes) {
		this.cantidadAsistentes = cantidadAsistentes;
	}

	@Override
	public String toString() {
		return "Capacitacion [id=" + id + ", rut=" + rut + ", dia=" + dia + ", hora=" + hora + ", lugar=" + lugar
				+ ", duracion=" + duracion + ", cantidadAsistentes=" + cantidadAsistentes + "]";
	}
	
}