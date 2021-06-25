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

public class UrlMappingQuiz01 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		// 오늘의 날짜는 2021년 5월 20일
		Date today = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일", Locale.KOREA);
		PrintWriter out = response.getWriter();
		out.println("오늘의 날짜는 " + sdf.format(today));
		
		// 현재 시간은 14시 52분 43초 입니다.
		Timestamp time = new Timestamp(System.currentTimeMillis());
		SimpleDateFormat sdf2 = new SimpleDateFormat("HH시 mm분 ss초");
//		HH : 0 -23
//		kk : 1 - 24
//		KK : 0 -11
//		hh : 1 - 12
		out.println("현재 시간은 " + sdf2.format(time));
	}
}
