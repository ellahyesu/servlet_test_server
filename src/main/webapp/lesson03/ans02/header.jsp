<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="d-flex align-items-center">
	<div class="logo">
		<h3><a href="list_template.jsp" class="text-success">Melong</a></h3>
	</div>
	<div class="search">
		<div class="search-bar">
		<!-- form 태그와 submit은 쌍이다!! -->
		<form method="get" action="info_template.jsp">
			<div class="input-group">
				<input type="text" class="form-control" name="search" value="<%= request.getParameter("search") %>">
				<div class="input-group-append">
					<input type="submit" class="btn btn-success" value="검색">
				</div>
			</div>
		</form>
		</div>
	</div>
</header>