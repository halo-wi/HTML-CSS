<%@page import="model.EmpVO"%>
<%@page import="java.util.List"%>
<%@page import="model.EmpDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int deptid = Integer.parseInt(request.getParameter("deptid"));
EmpDAO dao = new EmpDAO();
List<EmpVO> emplist = dao.selectByDept(deptid);
%>
<table>
<tr>
	<td>직원번호</td><td>이름</td><td>급여</td><td>입사일</td><td>부서번호</td>
</tr>
<%
for(EmpVO emp:emplist){
	String f =  
			 "<tr>"+ 
			 "<td>%d</td>"+ 
			 "<td>%s</td>"+ 
			 "<td>%s</td>"+ 
			 "<td>%d</td>"+ 
			 "<td>%d</td>"+ 
			"</tr>";
	
	String s = String.format(f, emp.getEMPLOYEE_ID(),emp.getFIRST_NAME(),
			emp.getHIRE_DATE(), emp.getSALARY(),emp.getDEPARTMENT_ID()	);
	out.print(s);
}
%>

</table>
</body>
</html>