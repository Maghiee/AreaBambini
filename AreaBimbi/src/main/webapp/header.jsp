<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style type="text/css">
.navigation {
	color: white;
	text-shadow: 5px 5px 10px black;
}
.spazio{
margin-right: 20px;
}

.luminoso{
color: white;
  text-shadow: 1px 1px 2px black, 0 0 25px beige, 0 0 5px white;
}

.nav-link {
    transition: transform 0.3s ease-in-out; /* Aggiunge una transizione per un movimento fluido */
}

.nav-link:hover {
    transform: translateX(5px); /* Muove l'elemento di 5px verso destra al passaggio del mouse */
}
</style>

<div class="navigation">
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
		<div class="container-fluid"
			style="background-color: rgb(118, 74, 40);">
			<a class="navbar-brand" href="index.jsp" style="color: white"><img alt="tuut tank" src="image/logo.png" style="height: 20px; width: 20px"> TUUT TANK <img alt="tuut tank" src="image/logo.png" style="height: 20px; width: 20px"> </a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="persone" style="color: white">Lista Bambini</a></li>
					<li class="nav-item"><a class="nav-link"
						href="form-save-persona.jsp" style="color: white">Salva Bambino</a></li>
					<li class="nav-item"><a class="nav-link"
						href="ricerca-persone.jsp" style="color: white">Ricerca</a></li>
				</ul>
				<span class="luminoso"> Dalal Ak Diam
				<%=session.getAttribute("username")%></span>
				<span class="spazio"></span>
				<form class="d-flex ml-2" role="search" action="logout"
					method="post">
					<button class="btn btn-outline-dark" type="submit" style="background-color: white; color: rgb(118, 74, 40);">Log
						out</button>
				</form>
			</div>
		</div>
	</nav>
</div>