package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz03")
public class UrlMappingQuiz03 extends HttpServlet {

	@Override 
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>뉴스 기사 출력</title></head><body>");
		out.print("<h1>[단독] 고양이가 야옹해</h1><br>");
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		Timestamp time = new Timestamp(System.currentTimeMillis());
		SimpleDateFormat sdf2 = new SimpleDateFormat("HH:mm:ss");
		out.print("기사 입력 시간: " + sdf.format(date) + " " + sdf2.format(time));
		out.print("<hr>끝");
		out.print("</body></html>");
	}
}
