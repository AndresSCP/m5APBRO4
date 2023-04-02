package servlet;

import java.io.IOException;
import java.util.List;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import clases.Capacitacion;
import clases.CapacitacionDaoImpl;
import interfaces.ICapacitacionDao;


/**
 * Servlet implementation class ContactoServletJSP
 */
@WebServlet("/ListarCapServlet")
public class ListarCapServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Capacitacion> miArrayList = new ArrayList<>();

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListarCapServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
            // Obtener la sesión actual
            HttpSession session = request.getSession();
            
            // Obtener un atributo de sesión
            String username = (String) session.getAttribute("username");

            //Verificar que la session este activa
            if (session.getAttribute("username") != null) {
            
                ICapacitacionDao capacitacionDao = new CapacitacionDaoImpl();
		miArrayList = capacitacionDao.obtener();
		
		// Establecer el atributo miLista en el objeto request
		request.setAttribute("miLista", miArrayList);

		// Enviar el objeto request y el objeto response a la página JSP
		request.getRequestDispatcher("ListarCapacitaciones.jsp").forward(request, response);

        	// Llamamos a la página JSP del formulario de contacto
            request.getRequestDispatcher("ListarCapacitaciones.jsp").forward(request, response);
        }else{
        	//Se redirige la pagina a login
        	request.getRequestDispatcher("login.jsp").forward(request, response);
        }

    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}