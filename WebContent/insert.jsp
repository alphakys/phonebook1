<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="java.util.List" %>
<%@ page import="com.javaex.vo.*" %>

<%  
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	PhoneVo pv = new PhoneVo(name, hp, company);
	
	PhoneDao pd = new PhoneDao(); 
	pd.insert(pv);
		
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<% response.sendRedirect("list.jsp"); %>
</body>
</html>