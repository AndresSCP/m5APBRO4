<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/Style.css">


<title>Formulario de Contacto</title>
<!-- Incluimos los archivos CSS de Bootstrap -->
</head>
<body id="bodycontacto">
	<%@include file="extras/Navbar.jsp"%>
	<body style="background-color: Lavender;">
	<div class="container">
		<h1 class="text-center">Formulario de Contacto</h1>
		<form id="formContacto" method="POST" action="index.jsp">
  <div class="form-group">
    <label for="nombre">Nombre de Contacto</label>
    <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre" required>
    <div class="invalid-feedback"></div> <!-- Aquí se mostrará el mensaje de error -->
  </div>
  <div class="form-group">
    <label for="email">Correo Electrónico</label>
    <input type="email" class="form-control" id="email" name="email" placeholder="Correo Electrónico" required>
    <div class="invalid-feedback"></div> <!-- Aquí se mostrará el mensaje de error -->
  </div>
  <div class="form-group">
    <label for="asunto">Asunto</label>
    <input type="text" class="form-control" id="asunto" name="asunto" placeholder="Asunto" required>
    <div class="invalid-feedback"></div> <!-- Aquí se mostrará el mensaje de error -->
  </div>
  <div class="form-group">
    <label for="mensaje">Mensaje</label>
    <textarea class="form-control" id="mensaje" name="mensaje" rows="5" placeholder="Mensaje" required></textarea>
    <div class="invalid-feedback"></div> <!-- Aquí se mostrará el mensaje de error -->
  </div>
  <button type="submit" class="btn btn-primary">Enviar</button>
</form>
		
	</div>
	
		




<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
<script src="js/validaFormContacto.js"></script>

</body>
<footer><%@include file="extras/footer.jsp"%></footer>
</html>
