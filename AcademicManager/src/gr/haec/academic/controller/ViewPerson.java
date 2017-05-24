package gr.haec.academic.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import gr.haec.academic.model.Person;

@WebServlet(urlPatterns = { "/ViewPerson" }) 
public class ViewPerson extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * 
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		RequestDispatcher rd;
		HttpSession session = request.getSession();
		Person p=(Person)session.getAttribute("person");
		if (p==null)
			rd = request.getRequestDispatcher("/index.html");
		else
			rd = request.getRequestDispatcher("/WEB-INF/jsp/viewperson.jsp");
		rd.forward(request, response);
	}
	/**
	 * 
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request,response);
	}
}
