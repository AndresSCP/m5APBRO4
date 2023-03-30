package interfaces;

import clases.Capacitacion; 

import java.util.List;


public interface ICapacitacionDao {
	
	public boolean registrar(Capacitacion capacitacion);
	public List<Capacitacion> obtener();
	public boolean actualizar(Capacitacion capacitacion);
	public boolean eliminar (Capacitacion capacitacion);

}
