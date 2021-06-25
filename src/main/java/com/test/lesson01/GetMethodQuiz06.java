package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz06")
public class GetMethodQuiz06 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String number1Param = request.getParameter("number1");
		String number2Param = request.getParameter("number2");
		Integer number1 = Integer.valueOf(number1Param);
		Integer number2 = Integer.valueOf(number2Param);
		int addtion = number1 + number2;
		int subtraction = number1 - number2;
		int multiplication = number1 * number2;
		int division = number1 / number2;
		response.setContentType("text/json");
		PrintWriter out = response.getWriter();
		out.print("{\"addtion\": " + addtion + ", \"subtraction\": " + subtraction + ", \"multiplication\": " + multiplication + ", \"division\": " + division + "}");
	}
}
