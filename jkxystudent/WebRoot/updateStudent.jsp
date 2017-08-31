<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	//post 方法只需要在 接收的地方设置编码格式为utf-8就可以解决中文乱码问题
	request.setCharacterEncoding("utf-8");
	/**
	而GET方法处理应该将接收过来的值打碎成ISO-8859-1编码的，然后再组装成UTF-8的，
	new String(request.getParameter(param).getBytes("iso8859-1"),"UTF-8")，
	或者在from表单加上 accept-charset="UTF-8"。
	**/
	%>
	<jsp:useBean id="studentservice"
		class="com.jkxy.service.StudentService"></jsp:useBean>
	<jsp:useBean  id='student' class="com.jkxy.model.StudentBean"></jsp:useBean>
	<jsp:setProperty property="*" name="student"/>
	<%
		System.out.println("updateStudent.jsp-student:"+student.toString()); 
	 int i = studentservice.updateStudent(student);
		if(i==1){
		%>	
			<jsp:forward page="main_right.jsp"></jsp:forward>
			<%
		}else {
			 %>
			 <jsp:forward page="main_right.jsp"></jsp:forward>
			 
			 <% 
		}
		
	%>
</body>
</html>