<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환 결과</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<%
			int length = Integer.valueOf(request.getParameter("length"));
			// checkbox와 같은 여러 파라미터를 받아올 때 getParameterValues메소드 사용!!
			String[] types = request.getParameterValues("type");
		%>
		<h1>길이 변환 결과</h1>
		<h3><%= length %>cm</h3><hr>
		<%
			double convertedNumber = 0.0;
			if (types != null) {
				String result = "";
				for (String type : types) {
					if (type.equals("in")) {
						convertedNumber = length / 2.54;
						out.print("<h3>" + convertedNumber + " in</h3>");
					} else if (type.equals("yd")) {
						convertedNumber = length / 91.44;
						out.print("<h3>" + convertedNumber + " yd</h3>");
					} else if (type.equals("ft")) {
						convertedNumber = length / 30.48;
						out.print("<h3>" + convertedNumber + " ft</h3>");
					} else if (type.equals("m")) {
						convertedNumber = length / 100.0;
						out.print("<h3>" + convertedNumber + " m</h3>");
					}
				}
			}
		%>
	</div>
</body>
</html>