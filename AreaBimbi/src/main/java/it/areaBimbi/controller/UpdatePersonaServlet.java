package it.areaBimbi.controller;

import java.io.IOException;

import it.areaBimbi.entity.Persona;
import it.areaBimbi.repository.PersonaRepository;
import it.areaBimbi.repository.impl.PersonaRepositoryImpl;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/update-persona")
public class UpdatePersonaServlet extends HttpServlet {

	private PersonaRepository personaRepository = new PersonaRepositoryImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Persona persona = personaRepository.findById(id);
		request.setAttribute("persona", persona);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("form-update-persona.jsp");
		requestDispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String codice = request.getParameter("codice");
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String eta = request.getParameter("eta");
		String genitore = request.getParameter("genitore");
		String numero = request.getParameter("numero");
		String nota = request.getParameter("nota");

		Persona persona = personaRepository.findById(id);
		persona.setCodice(codice);
		persona.setNome(nome);
		persona.setCognome(cognome);
		persona.setEta(eta);
		persona.setGenitore(genitore);
		persona.setNumero(numero);
		persona.setNota(nota);

		personaRepository.update(persona);

		response.sendRedirect("persone");
	}
}
