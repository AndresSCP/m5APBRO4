package clases;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import interfaces.*;
import clases.*;

public class CapacitacionDaoImpl implements ICapacitacionDao{
	
	List<Capacitacion> capacitacion;
	
	//hacer la conexion , ejecutar la query, obtener los objetos del resultset

	@Override
	public boolean registrar(Capacitacion capacitacion) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Capacitacion> obtener() {
		// TODO Auto-generated method stub
		return capacitacion;
	}

	@Override
	public boolean actualizar(Capacitacion capacitacion) {
//		capacitacion.get(capacitacion.getDia());
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean eliminar(Capacitacion capacitacion) {
		// TODO Auto-generated method stub
		return false;
	}
	

}