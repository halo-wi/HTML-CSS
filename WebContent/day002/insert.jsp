<%@page import="model.DeptDAO"%>
<%@page import="model.DeptVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="refresh" content="3;url=menu.html">
<title>부서 db 등록</title>
<%//1 사용자 입력값 받기 
int id = Integer.parseInt(request.getParameter("dept_id"));
String name = request.getParameter("dept_name");
int mid = Integer.parseInt(request.getParameter("manager_id"));
int lid = Integer.parseInt(request.getParameter("location_id"));
DeptVO dept = new DeptVO(id,name,mid,lid);
//2 dao호출
DeptDAO dao=new DeptDAO();
int result = dao.insertDept(dept);
if (result >= 1) 
	System.out.print(result);
%>

</head>
<body>
<p> ${param.dept_id}</p>
<p> ${param.dept_name}</p>
<p> ${param.manager_id}</p>
<p> ${param.location_id}</p>

</body>
</html>