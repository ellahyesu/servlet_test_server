<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.test.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<link rel="stylesheet" href="style.css?" type="text/css">
</head>
<body>
<%
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connection();

	String selectQuery = "select * from `seller`";
	ResultSet result = mysqlService.select(selectQuery);
%>
	<div id="wrap">
		<form method="post" action="/lesson04/quiz03_insert">
			<jsp:include page="header.jsp" />
			<jsp:include page="menu.jsp" />
			<section class="container">
				<div class="m-5">
					<h1 class="mb-5">물건 올리기</h1>
					<div class="d-flex mb-3">
						<select class="form-control col-3 mr-3">
							<option>-아이디 선택-</option>
							<%
							// 2. 입력하기 - 셀렉트 태그를 통해서 셀러를 선택할 수 있도록 만드세요 (seller 테이블을 조회 해서 seller 목록을 가져옴)
								while (result.next()) {
							%>
								<option><%= result.getString("nickname") %></option>
							<%	
								}
							%>
						</select>
			
						<input type="text" class="form-control col-6" placeholder="제목">
						
						<div class="input-group col-3">
						  	<input type="text" class="form-control" placeholder="가격" aria-label="Recipient's username" aria-describedby="basic-addon2">
						  	<div class="input-group-append">
						    	<span class="input-group-text" id="basic-addon2">원</span>
						  	</div>
						</div>
	
					</div>
					<textarea class="form-control mb-3" rows="10" cols="100"></textarea>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
						    <span class="input-group-text" id="basic-addon1">이미지 url</span>
						</div>
					  	<input type="text" class="form-control" aria-describedby="basic-addon1">
					</div>
					<div>
						<button type="submit" class="btn btn-success w-100">저장</button>
					</div>
				</div>
			</section>
			<jsp:include page="footer.jsp" />
		</form>
	</div>
<%
	mysqlService.disconnect();
%>
</body>
</html>