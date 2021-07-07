package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/real_estate")
public class DatabaseConnectQuiz01 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection(); // DB 연결
		
		PrintWriter out = response.getWriter();
		try {
			// insert
			String insertQuery = "INSERT INTO real_estate (realtorId, address, area, type, price, rentPrice)"
					+ "VALUES(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, NULL)";
			mysqlService.update(insertQuery);
			
			// select
			String selectQuery = "select * from real_estate order by id desc limit 10";
			ResultSet resultSet = mysqlService.select(selectQuery);
			while (resultSet.next()) {
				out.println("매물 주소: " + resultSet.getString("address") 
				+ ", 면적: " + resultSet.getInt("area") + ", 타입: " + resultSet.getString("type"));
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		mysqlService.disconnect(); // DB 연결 해제
	}
}
