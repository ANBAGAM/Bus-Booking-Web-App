package com.chainsys.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class BookSeat
 */
@WebServlet("/BookSeat")
public class BookSeat extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BookSeat() {
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

		// set session
		// int id;
		HttpSession session = request.getSession();
		int busid = (int) session.getAttribute("bus_id");
		System.out.println(busid);
		// int id=Integer.parseInt(busid);
		String email = (String) session.getAttribute("email");

		PrintWriter out = response.getWriter();
		String status = " ";
		String temp = " ";
		request.setAttribute("email", email);
		request.setAttribute("bus_id", busid);
		
		
		
		SeatDAO obj = new SeatDAO();
		String seatNo="  ";
		int count=0;
		for (int i = 1; i <= 20; i++) {
			temp = String.valueOf(i);
			status = request.getParameter(temp);
			temp = "s" + temp;
			if (status.equals("yes")) {
				// out.println("Yes-->"+temp);
				try {
					
					obj.updateSeat(busid, temp);

					obj.addTicket(email, busid, temp);
					count++;
					seatNo=seatNo+temp+" ";

				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
			

		}int price=0;
		BusDAO busDAO = new BusDAO();
		try {
		 price=busDAO.getPrice(busid) * count;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("price", price);
		request.setAttribute("seat_no", seatNo);
		RequestDispatcher rd = request
				.getRequestDispatcher("displayTicket.jsp");
		rd.forward(request, response);
	}

}
