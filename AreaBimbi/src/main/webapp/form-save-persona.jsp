<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Salva Bambino</title>
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
            <h2>Aggiungi Bambino: </h2>
            <form id="personaForm" action="save-persona" method="post" onsubmit="return validateForm()">
                <div class="form-floating mb-3">
                    <input class="form-control" id="input" type="text" name="codice" placeholder="codice" required>
                    <label for="input-codice">Codice: </label>
                </div>
                <div class="form-floating mb-3">
                    <input class="form-control" id="input-nome" type="text" name="nome" placeholder="Nome" required>
                    <label for="input-nome">Nome: </label>
                </div>
                <div class="form-floating mb-3">
                    <input class="form-control" id="input-cognome" type="text" name="cognome" placeholder="Cognome" required>
                    <label for="input-cognome">Cognome: </label>
                </div>
                <div class="form-floating mb-3">
                    <input class="form-control" id="input-eta" type="text" name="eta" placeholder="Eta" required>
                    <label for="input-citta">Età: </label>
                </div>
                <div class="form-floating mb-3">
                    <input class="form-control" id="input-genitore" type="text" name="genitore" placeholder="Genitore" required>
                    <label for="input-genitore">Genitore: </label>
                </div>
                <div class="form-floating mb-3">
                    <input class="form-control" id="input-numero" type="text" name="numero" placeholder="Numero" required>
                    <label for="input-numero">Numero: </label>
                </div>
                <div class="form-floating mb-3">
                    <input class="form-control" id="input-nota" type="text" name="nota" placeholder="Nota" >
                    <label for="input-nota">Nota: </label>
                </div>
                <a class="btn btn-primary fw-bolder" href="persone">Indietro</a>
                <button class="btn btn-success fw-bolder" type="submit">Salva</button>
            </form>
        </div>
    </div>
</div>

<script>
    function validateForm() {
        var codice = document.forms["personaForm"]["codice"].value;
        var nome = document.forms["personaForm"]["nome"].value;
        var cognome = document.forms["personaForm"]["cognome"].value;
        var eta = document.forms["personaForm"]["eta"].value;
        var genitore = document.forms["personaForm"]["genitore"].value;
        var numero = document.forms["personaForm"]["numero"].value;

        if (codice == "" || nome == "" || cognome == "" || eta == "" || genitore == "" || numero == "" ) {
            alert("Compila questo campo!");
            return false;
        }
        return true;
    }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

