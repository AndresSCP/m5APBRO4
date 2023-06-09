package clases;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

//import clases.Usuario;
import interfaces.IUsuarioDAO;
import conexion.ConexionSingleton;



public class DaoUsuarioImp implements IUsuarioDAO {
	
	private Connection conexion = ConexionSingleton.getConexion();
	List<Capacitacion> capacitacion;
	
	@Override
	public void addUsuario(Usuario usuario) throws Exception {
		try {
			 PreparedStatement st = conexion.prepareStatement("INSERT INTO usuarios (run, nombre, apellidos, fechaNac, idUsuario) VALUES (?,?,?,?,?);");
			 
			 st.setInt(1, usuario.getRunUsuario());
			 st.setString(2, usuario.getNombreUsuario());
			 st.setString(3, usuario.getApellidoUsuario());
			 st.setString(4, usuario.getFechaNacimientoUsuario());
			 st.setInt(5, 3456);// Ojo le pongo este valor fijo es para que tenga relacion despues con los clientes asi esta en la base de datos
			 st.executeUpdate();
	         
	 
		}catch(Exception e) {
			throw e;
		}finally {
			if (conexion != null) {
		        try {
		        	conexion.close();
		        } catch (SQLException er) {
		        	 er.printStackTrace();
		        }
		    }
		}
		
	}

	@Override
	public ArrayList<Usuario> listarUsuario() throws Exception {
		String sql = "SELECT * FROM usuarios";
		ArrayList<Usuario> lista=  new ArrayList<Usuario>();
		try {
			 PreparedStatement st = conexion.prepareStatement("SELECT run, nombre, apellidos, fechaNac FROM usuarios;");		 
			 ResultSet rs = st.executeQuery();
			 while(rs.next()) {
				 Usuario user = new Usuario();
				 user.setId(rs.getInt("id"));
				 user.setRunUsuario(rs.getInt("run"));
				 user.setNombreUsuario(rs.getString("nombre"));
				 user.setApellidoUsuario(rs.getString("apellidos"));
				 user.setFechaNacimientoUsuario(rs.getString("fechaNac"));
				 //user.setIdUsuario(rs.getInt("idUsuario"));
				 lista.add(user);
			 }
			 rs.close();
			 st.close();
			 
			 
		}catch(Exception e) {
			throw e;
		}finally {
			if (conexion != null) {
		        try {
		        	conexion.close();
		        } catch (SQLException er) {
		        	 er.getMessage();
		        }
		    }
		}
		return lista;
	}

	@Override
	public void updateUsuario(Usuario usuario) throws Exception {
		try {
			 PreparedStatement st = conexion.prepareStatement("UPDATE usuarios SET nombre = ? WHERE id = ? ");
			 st.setString(1, usuario.getNombreUsuario());
			 st.setInt(2, usuario.getId());
			 st.executeUpdate();
			
		}catch(Exception e) {
			throw e;
		}finally {
			if (conexion != null) {
		        try {
		        	conexion.close();
		        } catch (SQLException er) {
		        	 er.getMessage();
		        }
		    }
		}
		
	}

	@Override
	public void deleteUsuario(Usuario usuario) throws Exception {
		try {
			 PreparedStatement st = conexion.prepareStatement("DELETE FROM usuarios WHERE id= ?");
			 st.setInt(1, usuario.getId());
			 st.executeUpdate();
		 
		}catch(Exception e) {
			throw e;
		}finally {
			if (conexion != null) {
		        try {
		        	conexion.close();
		        } catch (SQLException er) {
		        	 er.getMessage();
		        }
		    }
		}
		
	}

}
