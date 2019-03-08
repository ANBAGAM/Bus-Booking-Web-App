package com.chainsys.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.chainsys.model.Seat;
import com.chainsys.util.ConnectionUtil;

public class SeatDAO {
	public ArrayList<Seat> getStatus(int id) throws SQLException {
		Connection connection = ConnectionUtil.getConnection();

		String url = "select * from seats where id=" + id;
		PreparedStatement prepareStatement = connection.prepareStatement(url);
		ResultSet result = prepareStatement.executeQuery();
		ArrayList<Seat> list = new ArrayList<Seat>();
		Seat seat = new Seat();
		while (result.next()) {
			seat.setSeat_s1(result.getString(2));
			seat.setSeat_s2(result.getString(3));
			seat.setSeat_s3(result.getString(4));
			seat.setSeat_s4(result.getString(5));
			seat.setSeat_s5(result.getString(6));
			seat.setSeat_s6(result.getString(7));
			seat.setSeat_s7(result.getString(8));
			seat.setSeat_s8(result.getString(9));
			seat.setSeat_s9(result.getString(10));
			seat.setSeat_s10(result.getString(11));
			seat.setSeat_s11(result.getString(12));
			seat.setSeat_s12(result.getString(13));
			seat.setSeat_s13(result.getString(14));
			seat.setSeat_s14(result.getString(15));
			seat.setSeat_s15(result.getString(16));
			seat.setSeat_s16(result.getString(17));
			seat.setSeat_s17(result.getString(18));
			seat.setSeat_s18(result.getString(19));
			seat.setSeat_s19(result.getString(20));
			seat.setSeat_s20(result.getString(21));
			list.add(seat);

		}

		return list;
	}

	public int updateSeat(int id, String seat) throws SQLException {
		Connection connection = ConnectionUtil.getConnection();
		String url = "update seats set " + seat + "='BOOKED' where id=" + id;
		PreparedStatement prepareStatement = connection.prepareStatement(url);
		return (prepareStatement.executeUpdate());

	}

	public void addTicket(String email, int busid, String seatid)
			throws SQLException {

		System.out.println(email + " " + busid + " " + seatid);
		Connection connection = ConnectionUtil.getConnection();
		System.out.println(connection);
		String sql = "insert into ticketdetails(bus_id,seat_no,email_id) values(?,?,?)";
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		preparedStatement.setInt(1, busid);
		preparedStatement.setString(2, seatid);
		preparedStatement.setString(3, email);

		int rows = preparedStatement.executeUpdate();
		System.out.println("Rows inserted: " + rows);
	}

}
