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
<!-- <meta charset="ISO-8859-1"> -->
<title>Lista Capacitaciones</title>
</head>
<body id="bodylistado">
	<%@include file="extras/Navbar.jsp"%>
<h1>Listado de Capacitaciones</h1>

<%-- <%@ page import="java.util.ArrayList" %>
<ul class="list-group">
  <% ArrayList<String> miLista = (ArrayList<String>) request.getAttribute("miLista");
     if (miLista != null) {
        for (int i = 0; i < miLista.size(); i++) { %>
            <li class="list-group-item"><%= miLista.get(i) %></li>
  <%  }
     }
     else { %>
         <li class="list-group-item">No hay capacitaciones disponibles.</li>
  <% } %>
</ul> --%>

	<div class="container">
		<table class="table">
			<thead>
				<tr>
					<th>Capacitación</th>
					<th>RUT</th>
					<th>Día</th>
					<th>Hora</th>
					<th>Lugar</th>
					<th>Duración</th>
					<th>Cantidad de Asistentes</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Capacitación 1</td>
					<td>12.345.678-9</td>
					<td>01/04/2023</td>
					<td>09:00 - 13:00</td>
					<td>Sala A</td>
					<td>4 horas</td>
					<td>20</td>
				</tr>
				<tr>
					<td>Capacitación 2</td>
					<td>98.765.432-1</td>
					<td>03/04/2023</td>
					<td>14:00 - 18:00</td>
					<td>Sala B</td>
					<td>4 horas</td>
					<td>15</td>
				</tr>
				<tr>
					<td>Capacitación 3</td>
					<td>11.223.344-5</td>
					<td>05/04/2023</td>
					<td>10:00 - 12:00</td>
					<td>Sala C</td>
					<td>2 horas</td>
					<td>30</td>
				</tr>
				<tr>
					<td>Capacitación 4</td>
					<td>11.223.344-5</td>
					<td>05/04/2023</td>
					<td>10:00 - 12:00</td>
					<td>Sala W</td>
					<td>100 horas</td>
					<td>40</td>
				</tr>
			</tbody>
		</table>
	</div>


	<footer><%@include file="extras/footer.jsp"%></footer>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"
	integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD"
	crossorigin="anonymous"></script>
</body>
