package com.chainsys.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.chainsys.dao.BusDAO;
import com.chainsys.model.Bus;

/**
 * Servlet implementation class BusDetailsServlet
 */
@WebServlet("/BusDetailsServlet")
public class BusDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BusDetailsServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String from = request.getParameter("from");
		String to = request.getParameter("to");
		Bus bus = new Bus();
		bus.setSource(from);
		bus.setDestination(to);
		BusDAO dao = new BusDAO();
		try {
			// dao.findall(bus);
			HttpSession session = request.getSession();
			String email = (String) session.getAttribute("email");

			request.setAttribute("email", email);

			ArrayList<Bus> buslist = dao.findall(bus);
			request.setAttribute("bus", buslist);
			RequestDispatcher rd = request.getRequestDispatcher("buslist.jsp");
			rd.forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
