<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.vo.*" %>
<%@ page import="com.javaex.dao.*" %>

<%

String name = request.getParameter("name");
String hp = request.getParameter("hp");
String company = request.getParameter("company");

int personId = Integer.parseInt(request.getParameter("id"));
PhoneVo pv = new PhoneVo(personId, name, hp, company);

PhoneDao pd = new PhoneDao();
pd.update(pv);

response.sendRedirect("./list.jsp"); 

%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		
</body>
</html>