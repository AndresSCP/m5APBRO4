package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ContactoServletJSP
 */
@WebServlet("/ListarCapServlet")
public class ListarCapServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ArrayList<String> miArrayList = new ArrayList<>();

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
		// Llamamos a la página JSP del formulario de contacto
//		miArrayList.add("|---------------Capacitación--------------|----Rut----|-----Día-----|-----Hora-----|-------Lugar------|------Duración ------|-Cantidad Asistentes-|");
//		miArrayList.add("Especialidad DevOps-------------------------admin-----Lunes------09:00 AM-----Viña del Mar---------108 horas------------20");
//		miArrayList.add("Aplicaciones Full Stack JavaScript Trainee---admin----Martes-----09:00 AM-----Viña del Mar---------208 horas-------------10");
//		miArrayList.add("Aplicaciones Full Stack Java Trainee---------admin----Miercoles--09:00 AM-----Viña del Mar---------308 horas-------------30");
//		miArrayList.add("Aplicaciones Front-End Trainee	-------------admin----Jueves-----09:00 AM------Viña del Mar--------408 horas--------------40");
		
//		miArrayList.add("Capacitacion 1");
//		 if (miArrayList != null) {
//		        for (int i = 0; i < miArrayList.size(); i++) { 
//		            System.out.println(miArrayList.get(i));  
//		    }
//		     }
//		     else { 
//		         System.out.println("No hay capacitaciones disponibles");
//		   }
		request.setAttribute("miLista", miArrayList);
		

		// Obtener la sesión actual
        HttpSession session = request.getSession();

        // Obtener un atributo de sesión
        String username = (String) session.getAttribute("username");

        //Verificar que la session este activa
        if (session.getAttribute("username") != null) {
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