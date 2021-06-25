package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz05")
public class GetMethodQuiz05 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		String numberParam = request.getParameter("number");
		// 없으면 null이 되기 때문에 없을 경우를 대비해서 int아닌 Integer객체로 쓴다.
		Integer number = Integer.valueOf(numberParam);
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>구구단 출력</title></head><body><ul>");
		for (int i = 1; i < 10; i++) {
			out.print("<li>" + number + " X " + i + " = " + number * i + "</li>");
			out.println();
		}
		out.print("</ul></body></html>");
	}
}
