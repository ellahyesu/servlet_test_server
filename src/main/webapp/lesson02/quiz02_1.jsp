<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>확인</title>
</head>
<body>
	<%-- server:시간 또는 날짜를 출력 --%>
	<% 
	
	if (request.getParameter("type").equals("time")) {
		Date today = new Date(); 
	} else {
		
	}
	%>
	<h1>현재 시간은 </h1>
</body>
</html>