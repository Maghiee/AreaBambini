package it.areaBimbi.controller;

import java.io.IOException;

import it.areaBimbi.repository.PersonaRepository;
import it.areaBimbi.repository.impl.PersonaRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/delete-persona")
public class DeletePersonaServlet extends HttpServlet {

	private PersonaRepository personaRepository = new PersonaRepositoryImpl();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		personaRepository.deleteById(id);

		response.sendRedirect("persone");
	}

}
