package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingQuiz02 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		// 현재 시간은 14시 52분 43초 입니다.
//		HH : 0 -23
//		kk : 1 - 24
//		KK : 0 -11
//		hh : 1 - 12
		Timestamp time = new Timestamp(System.currentTimeMillis());
		SimpleDateFormat sdf2 = new SimpleDateFormat("HH시 mm분 ss초");

		out.println("현재 시간은 " + sdf2.format(time));

	}
}
