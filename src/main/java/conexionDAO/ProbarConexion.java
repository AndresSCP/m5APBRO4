package conexionDAO;

import entidades.Usuario;
import interfaces.UsuarioDAO;

//Esta Clase se creo para hacer pruebas de cada unos de los CRUD
// se ejecuta no como RUN as Server sino como aplicacion 

public class ProbarConexion {

	public static void main(String[] args) {
		Usuario user = new Usuario();
		
		try {
			UsuarioDAO  dao = new DaoUsuarioImp();
			
			
			user.setRunUsuario(12345);
			user.setNombreUsuario("Josehp");
			user.setApellidoUsuario("Zamora");
			user.setFechaNacimientoUsuario("1979-09-18");
			dao.addUsuario(user);
			
			/*for(Usuario u: dao.listarUsuario()) {
				System.out.println(u.getNombreUsuario()+ " "+ u.getNombreUsuario()+  " "+ u.getApellidoUsuario() + " "+ u.getFechaNacimientoUsuario());
			}*/
			
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		
		
		

	}

}
