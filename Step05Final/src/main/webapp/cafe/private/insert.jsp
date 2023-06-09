<%@page import="test.cafe.dao.CafeDao"%>
<%@page import="test.cafe.dto.CafeDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
	String title=request.getParameter("title");
	String content=request.getParameter("content");
	
	CafeDto dto=new CafeDto();
	dto.setTitle(title);
	dto.setWriter(id);
	dto.setContent(content);
	boolean isSuccess=CafeDao.getInstance().insert(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>/cafe/private/insert.jsp</title>
</head>
<body>
	<script>
		<%if(isSuccess){%>
			//알림창 띄우가
			alert("글을 성공적으로 등록 했습니다.");
			//javascript 로 페이지 이동
			location.href="${pageContext.request.contextPath }/cafe/private/list.jsp";
		<%}else{%>
			alert("등록 실패!");
			location.href="${pageContext.request.contextPath }/cafe/private/insertform.jsp";
		<%}%>
	</script>
</body>
</html>