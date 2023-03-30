<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg" id="bodynav">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp">Inicio</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="CreacionDeCapacitacion.jsp">Capacitacion</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="formContacto.jsp">Contacto</a>
        </li>
         <li class="nav-item">
          
        </li>       <li class="nav-item">
          <a class="nav-link" href="ListarCapServlet">Lista de Capacitaciones</a>
        </li>             
      </ul>
      			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link disabled">Usuario:
						<%=session.getAttribute("username")%></a></li>
				<li class="nav-item"><a class="nav-link" href="login.jsp">Cerrar sesión</a></li>
			</ul>      
    </div>
  </div>
</nav>
