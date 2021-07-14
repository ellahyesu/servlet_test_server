<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.test.common.MysqlService"%>
<%@ page import="java.sql.ResultSet"%>

<%
MysqlService mysqlService = MysqlService.getInstance();
mysqlService.connection();

// 1. 목록 출력하기 - id 를 기준으로 내림차순으로 출력하세요.
//String selectQuery = "select seller.*, used_goods.* from used_goods left join seller on used_goods.sellerId = seller.id";
String selectQuery = "select seller.*, used_goods.* from seller "
		+ "join used_goods on seller.id = used_goods.sellerId";
ResultSet result = mysqlService.select(selectQuery);
%>
<section class="contents">
	<article class="flex-wrap d-flex justify-content-between">

		<%
		while (result.next()) {
		%>
		<div class="box mt-4">
			<div class="p-3">
				<%
				if (result.getString("picture") != null) {
				%>

				<div class="w350 d-flex justify-content-center">
					<img src="<%=result.getString("picture")%>" width="350px">
				</div>
				<%
				} else {
				%>
				<div class="w350 d-flex justify-content-center">
					<h4>이미지 없음</h4>
				</div>
				<%
				}
				%>
				<div>
					<b><%=result.getString("title")%></b>
				</div>
				<div>
					<small class="text-secondary"><%=result.getString("price")%></small>
				</div>
				<div class="fc-orange"><%=result.getString("nickname")%></div>
			</div>
		</div>
		<%
		}
		%>
	</article>
</section>
<%
mysqlService.disconnect();
%>
</body>
</html>
