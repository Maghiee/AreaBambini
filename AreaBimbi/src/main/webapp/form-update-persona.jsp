<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="it.areaBimbi.entity.Persona" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Update</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
    <%@ include file="header.jsp" %>
    <div class="container mt-5">
        <div class="row">
            <div class="col-12">
                <h2>Modifica Persona:</h2>
                <form action="update-persona" method="post">
                    <input type="hidden" name="id" value="${persona.id}">
                    <div class="form-floating mb-3">
                        <input class="form-control" id="input-codice" type="text" name="codice" value="${persona.codice}">
                        <label for="input-codice">Codice:</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input class="form-control" id="input-nome" type="text" name="nome" value="${persona.nome}">
                        <label for="input-nome">Nome:</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input class="form-control" id="input-cognome" type="text" name="cognome" value="${persona.cognome}">
                        <label for="input-cognome">Cognome:</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input class="form-control" id="input-eta" type="text" name="eta" value="${persona.eta}">
                        <label for="input-eta">Età:</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input class="form-control" id="input-genitore" type="text" name="genitore" value="${persona.genitore}">
                        <label for="input-genitore">Genitore:</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input class="form-control" id="input-numero" type="text" name="numero" value="${persona.numero}">
                        <label for="input-numero">Numero:</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input class="form-control" id="input-nota" type="text" name="nota" value="${persona.nota}">
                        <label for="input-nota">Nota:</label>
                    </div>
                    <a class="btn btn-primary fw-bolder" href="persone">Indietro</a>
                    <button class="btn btn-success fw-bolder" type="submit">SALVA</button>
                </form>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>