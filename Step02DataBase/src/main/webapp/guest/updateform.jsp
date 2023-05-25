<%@page import="test.guest.dao.GuestDao"%>
<%@page import="test.guest.dto.GuestDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num=Integer.parseInt(request.getParameter("num"));

	GuestDto dto=GuestDao.getInstance().getData(num);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
		<h1>방문자 정보 수정 양식</h1>
		<form action="update.jsp" method="post">
			<div>
				<label for="num">번호</label>
				<input type="text" id="num" name="num" value="<%=dto.getNum() %>" readonly/>
			</div>
			<div>
				<label for="writer">이름</label>
				<input type="text" id="writer" name="writer" value="<%=dto.getWriter()%>"/>
			</div>
			<div>
				<label for="content">내용</label>
				<input type="text" id="content" name="content" value="<%=dto.getContent()%>"/>
			</div>
			<div>
				<label for="pwd">비밀번호</label>
				<input type="password" id="pwd" name="pwd"/>
			</div>
			<button class="btn btn-outline-primary" type="submit">수정확인</button>
         <button class="btn btn-outline-warning" type="reset">취소</button>
		</form>
	</div>
</body>
</html>









