<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="it.areaBimbi.entity.Persona" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>lista Bambini</title>
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
 <script>
    function cambiaColore(id, nuovaScritta) {
        var bottone = document.getElementById(id);
        if (bottone) {
            bottone.style.backgroundColor = "red"; // Cambia il colore del bottone in blu
            bottone.innerText = "USCITO"; // Cambia il testo del bottone
            bottone.disabled = true; // Disabilita il bottone per renderlo irreversibilmente cambiato
            // Memorizza lo stato del bottone utilizzando localStorage
            localStorage.setItem(id + "_colore", "red");
            localStorage.setItem(id + "_testo", "USCITO");
            localStorage.setItem(id + "_disabilitato", "true");
        }
    }

    window.onload = function() {
        // Ripristina lo stato del bottone per ogni bottone nella pagina
        var buttons = document.querySelectorAll("[id^='bottoneColore']");
        buttons.forEach(function(button) {
            var id = button.id;
            var colore = localStorage.getItem(id + "_colore");
            var testo = localStorage.getItem(id + "_testo");
            var disabilitato = localStorage.getItem(id + "_disabilitato");
            if (colore && disabilitato === "true" ) {
                button.style.backgroundColor = colore;
                button.innerText = testo;
                button.disabled = true;
            }
        });
    }
    </script>
    <link rel="icon" href="image/logo.png" >
</head>
<body>
<%@ include file="header.jsp" %>
<% List<Persona> persone = (List<Persona>) request.getAttribute("persone"); %>
<br><br>
<div class="container">
    <div class="row">
        <div class="col-12">
        <h2>Lista Bambini: </h2>
          <%-- Contatore di persone --%>
            <h5>Numero totale di bambini: <%= persone.size() %></h5>
            <table class="table">
                <thead>
                <tr>
                    <th>CODICE</th>
                    <th>NOME</th>
                    <th>COGNOME</th>
                    <th>ETA</th>
                    <th>GENITORE/TUTORE</th>
                    <th>NUMERO</th>
                    <th>NOTA</th>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <% for(Persona persona: persone) { %>
                    <tr>
                        <td><%= persona.getCodice() %></td>
                        <td><%= persona.getNome() %></td>
                        <td><%= persona.getCognome() %></td>
                        <td><%= persona.getEta() %></td>
                        <td><%= persona.getGenitore() %></td>
                        <td><%= persona.getNumero() %></td>
                        <td><%= persona.getNota() %></td>
                        <td>
                        <button id="bottoneColore_<%= persona.getId() %>" onclick="cambiaColore('bottoneColore_<%= persona.getId() %>')"  type="button" class="btn btn-success">DENTRO</button>
                        </td>
                        
                        <td>
                            
                               <a href="update-persona?id=<%= persona.getId() %>"  type="button" class="btn btn-dark">UPDATE</a>
                        </td>
                        <td>
                            <form action="delete-persona" method="post">
                                <input type="hidden" name="id" value="<%= persona.getId() %>">
                                <button type="submit" class="btn btn-danger">DELETE</button>
                            </form>
                        </td>
                    </tr>
                <% } %>
                </tbody>
            </table>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</body>
</html>
