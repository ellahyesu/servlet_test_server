package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz07")
public class GetMethodQuiz07 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		String addressParam = request.getParameter("address");
		String cardParam = request.getParameter("card");
		String priceParam = request.getParameter("price");
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>주문 결과</title></head><body>");
		if (!addressParam.startsWith("서울시")) {
			out.print("배달 불가 지역입니다.");
			return;
		} else if (cardParam.equals("신한카드")) {
			out.print("결제 불가 카드 입니다.");
			return;
		}
		out.print(addressParam + "<b> 배달 준비중</b><br>");
		out.print("결제금액: " + priceParam + "원");
		out.print("</body></html>");
	}
}
