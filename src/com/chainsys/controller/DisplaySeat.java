package com.chainsys.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.chainsys.dao.SeatDAO;
import com.chainsys.model.Seat;

/**
 * Servlet implementation class UpdateSeat
 */
@WebServlet("/DisplaySeat")
public class DisplaySeat extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DisplaySeat() {
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
		// TODO Auto-generated method stub

		int id = Integer.parseInt(request.getParameter("id"));

		// set session
		// int id;

		SeatDAO obj = new SeatDAO();
		ArrayList<Seat> list;
		try {
			HttpSession session = request.getSession();
			session.setAttribute("bus_id", id);
			HttpSession session1 = request.getSession();
			String mail = (String) session1.getAttribute("email");

			list = obj.getStatus(id);
			request.setAttribute("email", mail);
			RequestDispatcher rd = request
					.getRequestDispatcher("BookSeats.jsp");
			request.setAttribute("bus_id", id);

			request.setAttribute("list", list);
			rd.include(request, response);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
