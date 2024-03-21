<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="include/index.css">
<link rel="icon" href="image/logo.png" >
<style type="text/css">

body {
	background: linear-gradient(to bottom, #fff 10%, #f5f5dc 50%, #8B4513 100%);
}

@keyframes animazioneBenvenuto {
    0% {
        opacity: 0;
        transform: translateY(-20px);
    }
    100% {
        opacity: 1;
        transform: translateY(0);
    }
}

.benvenuto{
	text-align: center;
    color: rgb(118, 74, 40);
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    animation: animazioneBenvenuto 0.5s ease-in-out;
       animation: luminoso 10s infinite alternate; /* Alterna tra i colori per 1 secondo */
}

@keyframes luminoso {
    0% {
        color: #f5f5dc; /* Inizia con un colore beige */
    }
    50% {
        color: #8B4513; /* Diventa marrone a metà */
    }
    100% {
        color: #f5f5dc; /* Torna al colore beige */
    }
}



</style>
</head>
<body>
	<!-- <p><b>User: </b>request.getSession().getAttribute("username")e") %></p> -->
	<%@ include file="header.jsp"%>
	<br>
	<br>
	<div class="myHome1" align="center">
	
	<h1 class="benvenuto">Benvenuto</h1>

		<img alt="1"
			src="image/imagemagal.png" class="logo">

		<br> <br>
			<a style="color: white; height: 60px; width: 240px" href="persone" class="btn btn-outline-dark" type="button"><h4>LISTA DEI BAMBINI</h4></a>
		
			<a style="color: white; height: 60px; width: 120px" href="ricerca-persone.jsp" class="btn btn-outline-dark" type="button"><h4>RICERCA</h4></a>
	</div>
	
	<br>
	<img src="image/raabitatou.jpeg" class="rounded float-start" alt="..." style="height: 200px; width: 200px">
	<img src="image/magal touba.jpeg" class="rounded" alt="..." style="height: 200px; width: 210px">
	<img src="image/magal touba.jpeg" class="rounded" alt="..." style="height: 200px; width: 210px">
	<img src="image/magal touba.jpeg" class="rounded" alt="..." style="height: 200px; width: 210px">
	<img src="image/magal touba.jpeg" class="rounded" alt="..." style="height: 200px; width: 210px">
	<img src="image/magal touba.jpeg" class="rounded" alt="..." style="height: 200px; width: 210px">
    <img src="image/xassida.jpeg" class="rounded float-end" alt="..."  style="height: 200px; width: 200px">


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>