package it.areaBimbi.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.Enumeration;

import it.areaBimbi.entity.Utente;
import it.areaBimbi.repository.UtenteRepository;
import it.areaBimbi.repository.impl.UtenteRepositoryImpl;

@WebServlet("/login")
	
 public class LoginServlet extends HttpServlet {

	private UtenteRepository utenteRepository = new UtenteRepositoryImpl();

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* servono per stampare una serie di informazioni 
		Enumeration<String> headerNames = request.getHeaderNames();
		while(headerNames.hasMoreElements()) {
            String headerName = headerNames.nextElement();
            String headerValue = request.getHeader(headerName);
            System.out.println(headerName + ": " + headerValue);
        }
        */
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		Utente utente = utenteRepository.findByUsername(username);
		if(utente!=null && utente.getPassword().equals(password)) {
			// request.setAttribute("username", utente.getUsername());
			HttpSession session = request.getSession();
			session.setAttribute("username", utente.getUsername());
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
			requestDispatcher.forward(request, response);
		} else {
			/*
			request.setAttribute("errore", "Credenziali errate!");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("login.jsp");
            requestDispatcher.forward(request, response);
            */
			response.sendRedirect("login.jsp?errore");
		}
	}

}
