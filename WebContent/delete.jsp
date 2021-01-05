<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.*" %>


<%

int personId = Integer.parseInt(request.getParameter("id"));

PhoneDao pd = new PhoneDao();
pd.delete(personId);


%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		<%response.sendRedirect("./list.jsp"); %>
</body>
</html>