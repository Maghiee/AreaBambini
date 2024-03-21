package it.areaBimbi.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import it.areaBimbi.entity.Persona;
import it.areaBimbi.repository.PersonaRepository;
import it.areaBimbi.repository.impl.PersonaRepositoryImpl;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/persone")
public class PersoneServlet extends HttpServlet {

	private PersonaRepository personaRepository = new PersonaRepositoryImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		if (session.getAttribute("username") == null) {
			response.sendRedirect("login.jsp");
			return;
		}
		
		String codice = request.getParameter("codice");
		String nome = request.getParameter("nome");
		List<Persona> persone = null;
		if (nome == null && codice == null) {
			persone = personaRepository.findAll();
		} else if (nome == null && codice != null) {
			Persona persona = personaRepository.findByCodice(codice);
			persone = new ArrayList<Persona>();
			if (persona != null)
				persone.add(persona);
		} else if (nome != null && codice == null) {
			persone = personaRepository.findByNome(nome);
		}
		request.setAttribute("persone", persone);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("persone.jsp");
		requestDispatcher.forward(request, response);
	}

}
