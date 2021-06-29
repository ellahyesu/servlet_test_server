<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POST Method 폼 태그</title>
</head>
<body>
	<%
		String nickname = request.getParameter("nickname");
		String hobby = request.getParameter("hobby");
		String animal = request.getParameter("animal");
		String[] foodArr = request.getParameterValues("food"); // 선택 항목이 여러개 일 때 string 배열로 받고, 넘어오기 때문에 -> getParameterValues() 사용!!
		String fruit = request.getParameter("fruit");
	%>
	<table border="1">
		<tr>
			<th>별명</th>
			<td><%= nickname %></td>		
		</tr>
		<tr>
			<th>취미</th>
			<td><%= hobby %></td>		
		</tr>
		<tr>
			<th>선호하는 동물</th>
			<td><%= animal %></td>		
		</tr>
		<tr>
			<th>선호하는 음식</th>
			<td>
				
				<%
					if (foodArr != null) {
						String result = "";
						for (String food : foodArr) {
							result += food + ", ";
						}
						// 맨 뒤에 붙은 , 제거
						// ab, substring(0, 2) => ab
						result = result.substring(0, result.length() - 2);
						out.print(result);
					}
				%>
			
			</td>		
		</tr>
		<tr>
			<th>선호하는 과일</th>
			<td><%= fruit %></td>		
		</tr>
	</table>
</body>
</html>