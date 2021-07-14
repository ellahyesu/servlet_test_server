<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.test.common.MysqlService"%>
<%@ page import="java.sql.ResultSet"%>
<%
//판매자 아이디 정보들을 가져온다
MysqlService mysqlService = MysqlService.getInstance();
mysqlService.connection();

String selectQuery = "select * from seller";
ResultSet result = mysqlService.select(selectQuery);
%>

<section class="container">
	<form id="inputForm" method="post" action="/lesson04/quiz03_insert">
		<div class="m-5">
			<h1 class="mb-5">물건 올리기</h1>
			<div class="d-flex mb-3">
				<select class="form-control col-3 mr-3" id="sellerId"
					name="sellerId">
					<option value="notSelected">-아이디 선택-</option>
					<%
					// 2. 입력하기 - 셀렉트 태그를 통해서 셀러를 선택할 수 있도록 만드세요 (seller 테이블을 조회 해서 seller 목록을 가져옴)
					while (result.next()) {
					%>
					<option value="<%=result.getInt("id")%>"><%=result.getString("nickname")%></option>
					<%
					}
					%>
				</select> <input type="text" class="form-control col-6" placeholder="제목"
					id="title" name="title">

				<div class="input-group col-3">
					<input type="text" class="form-control" placeholder="가격" id="price"
						name="price">
					<div class="input-group-append">
						<span class="input-group-text">원</span>
					</div>
				</div>

			</div>
			<textarea name="description" class="form-control mb-3" rows="10"
				cols="100"></textarea>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">이미지 url</span>
				</div>
				<input name="url" type="text" class="form-control">
			</div>
			<div>
				<button type="submit" class="btn btn-success w-100">저장</button>
			</div>
		</div>
	</form>
</section>


<script>
	$(document).ready(function() {
		$("#inputForm").on("submit", function(e) {
			var title = $("#title").val();
			var price = $("#price").val();

			if ($("#sellerId").val() == "notSelected") {
				alert("판매자를 선택하세요.");
				return false;
			}
			if (title == null || title == "") {
				alert("제목을 입력하세요.");
				return false;
			}
			if (price == null || price == "") {
				alert("가격을 입력하세요.");
				return false;
			}
			return true;
		});
	});
</script>

<%
mysqlService.disconnect();
%>
