<%@page import="model.DeptVO"%>
<%@page import="java.util.List"%>
<%@page import="model.DeptDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>부서번호</th>
			<th>부서이름</th>
			<th>매니져</th>
			<th>지역번호</th>
		</tr>
		<%
		DeptDAO dao = new DeptDAO();
		List<DeptVO> deptlist = dao.selectAll();
		for(DeptVO dept:deptlist){
		
		out.print("<tr>");
		out.print("<td>"+dept.getDepartment_id()+"</td><td>"+dept.getDepatment_name()+"</td><td>"+dept.getManager_id()+"</td><td>"+dept.getLocation_id()+"</td>");
		out.print("</tr>");
		}
		%>
		
</body>
</html>