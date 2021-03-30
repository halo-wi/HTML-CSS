<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>사용자가 입력한 정보를 받음 </h1>
<!-- EL(Epression Language표기법 -->
<p>아이디: ${param.userid}</p>


	
	<% request.setCharacterEncoding("utf-8");
	//포스트 방식일 때에는 바디부분에 입력양식 %>

</body>
</html>