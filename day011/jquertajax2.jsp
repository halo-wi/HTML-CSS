<%@page import="model.EmpDAO"%>
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
<% 
DeptDAO deptDAO = new DeptDAO();
List<DeptVO> deptlist = deptDAO.selectAll();

EmpDAO empDAO = new EmpDAO();
%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
$(function() {
	$("#deptselect").on("change", function() {
		$.ajax({
			url:"empList.jsp",
			data:{"deptid": $(this).val()},
			type:"get",
			success:function(htmlData){
				$("#here").html(htmlData)
			}
		});
	})
});


</script>
</head>
<body>
<h1>직원목록</h1>
<select id="deptselect">
<option value = "부서id">부서이름</option>
<%for(DeptVO dept : deptlist) {
	String s = String.format("<option value='%d'>%s</option>",dept.getDepartment_id(),dept.getDepartment_name());
	out.print(s);
} %>

</select>
<div id = "here"></div>
</body>
</html>