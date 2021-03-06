<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이번달 달력</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%
		Calendar c1 = Calendar.getInstance();
		int lastDay = c1.getActualMaximum(Calendar.DATE);
		
		Calendar c2 = Calendar.getInstance();
		c2.set(Calendar.DATE, 1);
		int startDayOfWeek = c2.get(Calendar.DAY_OF_WEEK);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
	%>
	<div class="container text-center">
		<h1><%= sdf.format(c1.getTime()) %></h1>

		<table class="table table-hover">
			<thead>
				<tr>
					<th class="text-danger">일</th>
					<th>월</th>
					<th>화</th>
					<th>수</th>
					<th>목</th>
					<th>금</th>
					<th>토</th>
				</tr>
			</thead>
			<tbody>
		<%
		int cnt = 1;
		for (int i = 1; i <= 6; i++) {
			%>
			<tr class="display-4">
			<%
			for (int j = 0; j < 7; j++) {
				if (cnt == 1 && j < startDayOfWeek - 1) {
					out.print("<td></td>");
					continue;
				} 
			%>
				<td><%= cnt %></td>
			<%
				cnt++;
				if (cnt > lastDay) {
					return;
				}
			}
			out.print("</tr>");
		}
			%>
			</tbody>
		</table>
	</div>
</body>
</html>