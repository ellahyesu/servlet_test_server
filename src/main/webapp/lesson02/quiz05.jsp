<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1>길이 변환</h1>
		<form method="post" action="/lesson02/quiz05_1.jsp">
			<div class="d-flex">
				<input type="text" class="form-control col-3 mr-2 mb-2" name="length">
				<span class="mr-2 mt-3">cm</span>
			</div>
			<div class="d-flex">
				<label for="in" class="mr-1">인치</label>
				<input type="checkbox" id ="in" name="type" value="in" class="mt-1 mr-2">
				<label for="yd" class="mr-1">야드</label>
				<input type="checkbox" id="yd" name="type" value="yd" class="mt-1 mr-2">
				<label for="ft" class="mr-1">피트</label>
				<input type="checkbox" id="ft" name="type" value="ft" class="mt-1 mr-2">
				<label for="m" class="mr-1">미터</label>
				<input type="checkbox" id="m" name="type" value="m" class="mt-1 mr-2">
			</div>
			<button type="submit" class="btn btn-success">변환하기</button>
		</form>
	</div>
</body>
</html>