<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="islogin.jsp"></jsp:include>
<frameset rows="20%,*">
	<frame src="top.jsp">
	<frameset cols="20%,*">
		<frame src="main_left.jsp">
		<frame src="main_right.jsp" name="main_right">
	 </frameset>
</frameset>
<body>
		
</body>
</html>