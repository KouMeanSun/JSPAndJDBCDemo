<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="islogin.jsp"></jsp:include>
<body>
	<a href="inputstuinfo.jsp"   target="main_right">录入学生信息</a><br/>
	<a href="displaystuinfo.jsp" target="main_right">查看学生信息</a><br/>
	<!-- <a href="modifystuinfo.jsp"  target="main_right">修改学生信息</a><br/> -->
	<!-- <a href="deletestuinfo.jsp"  target="main_right">删除学生信息</a><br/> -->
	<a href="exit.jsp" target="_top">退出</a>
</body>
</html>