package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz03_insert")
public class Quiz03Insert extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		Integer sellerId = Integer.valueOf(request.getParameter("sellerId"));
		String title = request.getParameter("title");
		Integer price = Integer.valueOf(request.getParameter("price"));
		String description = request.getParameter("description");
		String url = request.getParameter("url");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		String insertQuery = "insert into `used_goods`"
				+ "(`sellerId`, `title`, `price`, `description`, `picture`)"
				+ "values"
				+ "(" + sellerId + ", '" + title + "', " + price + ", '" + description + "', '" + url + "');";
		
		try {
			mysqlService.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		mysqlService.disconnect();
		
		response.sendRedirect("/lesson04/quiz03/list_template.jsp");
	}
}
