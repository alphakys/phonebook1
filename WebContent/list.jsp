<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="java.util.List" %>
<%@ page import="com.javaex.vo.*" %>

<% 

PhoneDao pd = new PhoneDao(); 
List<PhoneVo> list = pd.getPhList();

%> 



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
	<h1>전화번호 리스트</h1>
	
	<p>입력한 정보 내역입니다.</p>
	
	<% for(int i=0; i<list.size(); i++){ %>
				

	<table border ='1'>
	
			<tr>
				<td>이름(name)</td>
				<td><%=list.get(i).name %></td>
			</tr>
			<tr>
				<td>핸드폰(hp)</td>
				<td><%=list.get(i).hp %></td>
			</tr>
			<tr>
				<td>회사(company)</td>
				<td><%=list.get(i).company %></td>
			</tr>
	
	</table>
	
	<%} %>
	
	<br>
	
	<a href="./writeForm.jsp">추가번호 등록</a>
	
	
</body>
</html>
