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
import jakarta.servlet.http.HttpSession;

@WebServlet("/persona")
public class PersonaServlet extends HttpServlet {

	private PersonaRepository personaRepository = new PersonaRepositoryImpl();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Persona persona = personaRepository.findById(id);
		request.setAttribute("persona", persona);
		HttpSession session = request.getSession();
		session.setAttribute("personaId", persona.getId());
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("persona.jsp");
		requestDispatcher.forward(request, response);
	}

}
