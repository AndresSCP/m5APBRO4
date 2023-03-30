<%
if (session.getAttribute("username") == null) {
    response.sendRedirect("login.jsp");
}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/Style.css">
<%@include file = "extras/Navbar.jsp" %>
	<body id="bodycapacitacion">
	<div class="container">
		<h1 class="text-center">Creacion de capacitacion</h1>
		<form action="index.jsp" method="post">
			<div class="form-group">
				<label for="nombre">Nombre de capacitacion:</label>
				<input type="text" id="nombre" name="nombre" class="form-control" required>
			</div>
			<div class="form-group">
				<label for="nombre">Rut:</label>
				<input type="number" id="rut" name="rut" class="form-control" required>
			</div>
			<div class="row">
				<div class="col-md-3">
					<label for="validationDefault04" class="form-label">Dia:</label>
					<select class="form-select" id="validationDefault04" required>
						<option selected disabled value="">Seleccione un dia</option>
						<option value="lunes">Lunes</option>
						<option value="martes">Martes</option>
						<option value="miercoles">Miercoles</option>
						<option value="jueves">Jueves</option>
						<option value="viernes">Viernes</option>
						<option value="sabado">Sabado</option>
						<option value="domingo">Domingo</option>
					</select>
				</div>
				<div class="col-md-3">
					<label for="hora" class="form-label">Hora:</label>
					<input type="time" id="hora" name="hora" class="form-control" required>
				</div>
				<div class="col-md-3">
					<label for="lugar" class="form-label">Lugar:</label>
					<select class="form-select" id="lugar" required>
						<option selected disabled value="">Seleccione un lugar</option>
						<option value="valparaiso">Valparaiso</option>
						<option value="villa_alemana">Villa Alemana</option>
						<option value="santiago">Santiago</option>
						<option value="quillota">Quillota</option>
					</select>
				</div>
			<div class="col-md-3">
			<label for="duracion" class="form-label">Duracion:</label>
			<input type="text" id="duracion" name="duracion" class="form-control" maxlength="70" required>
			</div>
			</div>
			<div class="form-group">
   			 <label for="cantidad_asistentes">Cantidad de Asistentes:</label>
   	 		<input type="number" id="cantidad_asistentes" name="cantidad_asistentes" class="form-control" required max="999">
			</div>
			<br>
			<button type="submit" class="btn btn-primary">Enviar</button>
		</form>
	</div>
</body>
<br>
<%@include file="extras/footer.jsp"%>
</html>
