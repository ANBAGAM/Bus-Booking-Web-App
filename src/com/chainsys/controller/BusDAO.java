package com.chainsys.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BusDAO {
	public ArrayList findall(Bus bus) throws SQLException{
		Connection connection=ConnectionUtil.getConnection();
		String sql="SELECT * FROM bus WHERE SOURCE=? AND DESTINATION=?";
		PreparedStatement stmt = connection.prepareStatement(sql);
		stmt.setString(1,bus.getSource());
		stmt.setString(2,bus.getDestination());
		ResultSet resultset = stmt.executeQuery();
		ArrayList<Bus> blist=new ArrayList<>();
		while(resultset.next()){
			Bus busobj =new Bus();
			busobj.setId(resultset.getString("id"));
			busobj.setName(resultset.getString("name"));
			busobj.setDuration(resultset.getInt("duration"));
			busobj.setCategory(resultset.getString("category"));
			busobj.setPrice(resultset.getInt("price"));
			blist.add(busobj);
		}
		return blist;
	}

	public int getPrice(int id) throws SQLException{
		Connection connection=ConnectionUtil.getConnection();
		String sql="SELECT price FROM bus WHERE id="+id;
		PreparedStatement stmt = connection.prepareStatement(sql);
		ResultSet resultset = stmt.executeQuery();
		while(resultset.next()){
			return resultset.getInt(1);
		}
		return 0;
	}
}
