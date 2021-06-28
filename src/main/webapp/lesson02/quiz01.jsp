<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트 요소</title>
</head>
<body>
	 <%-- 1. 1부터 n까지의 합계를 구하는 함수 --%>
	 <%!
	 	public int getSum(int n) {
	 		int result = 0;
	 		for (int i = 1; i <= n; i++) {
	 			result += i;
	 		}
	 		return result;
	 	}
	 %>
	 <%-- 2. 점수들의 평균 구하기 --%>
	 <%
	 	int[] scores = {80, 90, 100, 95, 80};
	 	double sum = 0.0;	
		
	 	for (int i = 0; i < scores.length; i++) {
	 		sum += scores[i];
	 	}
	 	double avg = sum / scores.length;
	 %>
	 <%-- 3. 채점 결과 --%>
	 <%
	 	int score = 0;
	 	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	 	for (int i = 0; i < scoreList.size(); i++) {
			if (scoreList.get(i).equals("O")) 
				score += 10;
	    }
	 %>
	 <%-- 4. 나이 구하기 --%>
	 <%!
		private String birthDay = "20010820";
	 	public int getAge(String birthDay) {
	 		return 2021 - Integer.parseInt(birthDay.substring(0, 4)) + 1; 
	 	}
	 %>
	 
	 <h1>1부터 50까지의 합은 <%= getSum(50) %>입니다.</h1>
	 <h1>평균 점수는 <%= avg %>입니다.</h1>
	 <h1>채점 결과는 <%= score %>점 입니다.</h1>
	 <h1><%= birthDay %>의 나이는 <%= getAge(birthDay) %>세 입니다.</h1>
</body>
</html>