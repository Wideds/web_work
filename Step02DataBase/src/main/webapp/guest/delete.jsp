<%@page import="test.guest.dto.GuestDto"%>
<%@page import="test.guest.dao.GuestDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	GuestDto dto=new GuestDto();	

	int num=Integer.parseInt(request.getParameter("num"));
	String pwd=request.getParameter("pwd");
	
 	boolean isSuccess=GuestDao.getInstance().delete(num,pwd);
 	
 	String cPath=request.getContextPath();
 	
 	response.sendRedirect(cPath+"/guest/list.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/guest/delete.jsp</title>
</head>
<body>

</body>
</html>