package clases;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import interfaces.*;
import clases.*;
import conexion.ConexionSingleton;
import interfaces.ICapacitacionDao;
import clases.Capacitacion;


public class CapacitacionDaoImpl implements ICapacitacionDao{
	
	private Connection conexion = ConexionSingleton.getConexion();
	List<Capacitacion> capacitacion;
	
	//hacer la conexion , ejecutar la query, obtener los objetos del resultset

	@Override
	public boolean registrar(Capacitacion capacitacion) {
		String sql = "INSERT INTO capacitaciones (rut,dia,hora,lugar,duracion,cantidad_asistentes) VALUES (?,?,?,?,?,?)";
		try {
			PreparedStatement ps = conexion.prepareStatement(sql);
			ps.setLong(1, capacitacion.getRut());
			ps.setString(2, capacitacion.getDia());
			ps.setString(3, capacitacion.getHora());
			ps.setString(4, capacitacion.getLugar());
			ps.setString(5, capacitacion.getDuracion());
			ps.setInt(6, capacitacion.getCantidadAsistentes());
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public List<Capacitacion> obtener() {
		String sql = "SELECT * FROM capacitacion";
		List<Capacitacion> lista = new ArrayList<>();
		try {
			PreparedStatement ps = conexion.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Capacitacion capacitacion = new Capacitacion();
				capacitacion.setId(rs.getInt("idcapacitacion"));
				capacitacion.setRut(rs.getLong("Cliente_rutcliente"));
				capacitacion.setDia(rs.getString("capfecha"));
				capacitacion.setHora(rs.getString("caphora"));
				capacitacion.setLugar(rs.getString("caplugar"));
				capacitacion.setDuracion(rs.getString("capduracion"));
				capacitacion.setCantidadAsistentes(rs.getInt("capAsistentes"));
				lista.add(capacitacion);
                System.out.println(capacitacion);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lista;
	}

	@Override
	public boolean actualizar(Capacitacion capacitacion) {
//		String sql = "UPDATE capacitaciones SET rut=?,dia=?,hora=?,lugar=?,duracion=?,cantidad_asistentes=? WHERE id=?";
		
		try {
			String sql = "UPDATE capacitaciones SET rut=?,dia=?,hora=?,lugar=?,duracion=?,cantidad_asistentes=? WHERE id=?";
			PreparedStatement ps = conexion.prepareStatement(sql);
			ps.setLong(1, capacitacion.getRut());
			ps.setString(2, capacitacion.getDia());
			ps.setString(3, capacitacion.getHora());
			ps.setString(4, capacitacion.getLugar());
			ps.setString(5, capacitacion.getDuracion());
			ps.setInt(6, capacitacion.getCantidadAsistentes());
			ps.setInt(7, capacitacion.getId());
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean eliminar(Capacitacion capacitacion) {
		String sql = "DELETE FROM capacitaciones WHERE id=?";
		try {
			PreparedStatement ps = conexion.prepareStatement(sql);
			ps.setInt(1, capacitacion.getId());
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

}