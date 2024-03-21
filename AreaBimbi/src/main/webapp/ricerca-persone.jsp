<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ricerca</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
 <style type="text/css">
body {
	background-color: rgb(251, 228, 192);
}

.myHome1 {
	font-size: xx-large;
	color: fuchsia;
}
</style>
<link rel="icon" href="image/logo.png" >
  </head>
	<body>
	<%@ include file="header.jsp" %>
	<div class="container mt-5">
		<div class="row">
			<div class="col-12">
			  <h2>Ricerca Bambino: </h2>
		<form action="persone" method="get">
		<div class="form-floating mb-3">
			<input class="form-control" id="input-codice" type="text" name="codice">
			<label for="input-codice">Codice: </label>
			</div>
			<button class="btn btn-success fw-bolder" type="submit">RICERCA</button>
		</form>
		<br><br>
		<form action="persone" method="get">
		<div class="form-floating mb-3">
			<input class="form-control" id="input-nome" type="text" name="nome">
			<label for="input-nome">Nome: </label>
			</div>
			<button class="btn btn-success fw-bolder" type="submit">RICERCA</button>
		</form>
		</div>
		</div>
		</div>
		
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  
	</body>
</html>