<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="it.areaBimbi.entity.Persona"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Persona</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>
<body>
	<%@ include file="header.jsp"%>
	<%
	Persona persona = (Persona) request.getAttribute("persona");
	%>
	<div class="container">
		<div class="row">
			<div class="col-12 mt-3">

				<p>
					<b>Codice Fiscale: </b><%=persona.getCodice()%></p>
				<p>
					<b>Nome: </b><%=persona.getNome()%></p>
				<p>
					<b>Cognome: </b><%=persona.getCognome()%></p>
				<p>
					<b>Età: </b><%=persona.getEta()%></p>
				<p>
					<b>Genitore: </b><%=persona.getGenitore()%></p>
				<p>
					<b>Numero: </b><%=persona.getNumero()%></p>
					<p>
					<b>Nota: </b><%=persona.getNota()%></p>
				<br> <br>
				
				
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>

</body>
</html>