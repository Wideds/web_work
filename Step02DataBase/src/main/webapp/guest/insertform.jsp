<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>/guest/insertform.jsp</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<h1>방문자 추가 폼</h1>
		<form action="insert.jsp" method="post">
			<div class="mb-1">
				<label for="writer" class="form-label">이름</label>
				<input class="form-control" type="text" id="writer" name="writer" />
			</div>
			<div class="mb-1">
				<label for="content" class="form-label">내용</label>
				<input class="form-control" type="text" id="content" name="content" />
			</div>
			<div class="mb-1">
				<label for="pwd">비밀번호</label>
				<input class="form-control" type="text" id="pwd" name="pwd" />
			</div>
			<button class="btn btn-success" type="submit">추가</button>
		</form>
	</div>
</body>
</html>