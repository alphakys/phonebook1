<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.*" %>
<%@ page import="com.javaex.vo.*" %>
<%@ page import="java.util.List" %>


<% 
String keyword = request.getParameter("keyword");

PhoneDao pd = new PhoneDao();

List<PhoneVo> list = pd.search(keyword);

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%for(int i=0; i<list.size(); i++){ %>
		<table border ='1'>
		
				<tr>
					<td>이름</td>
					<td><%=list.get(i).name %></td>
				</tr>
				<tr>
					<td>핸드폰</td>
					<td><%=list.get(i).hp %></td>
				</tr>
				<tr>
					<td>회사</td>
					<td><%=list.get(i).company %></td>
				</tr>
				<tr>
					<td><a href="delete.jsp?id=<%=list.get(i).personId%>">삭제</a></td>
					<td><a href="updateForm.jsp?id=<%=list.get(i).personId%>">수정</a></td>
				</tr>
		</table>
		
		<br><br>
	<%} %>
	
</body>
</html>