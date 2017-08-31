<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="com.jkxy.model.StudentBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="studentservice"
		class="com.jkxy.service.StudentService"></jsp:useBean>
		<% 
		String studentid  =   request.getParameter("studentid");
		StudentBean student = studentservice.getStudentsWithId(Integer.parseInt(studentid));
		String isMan   = student.getXb() == 0 ? "checked" : "";
		String isWoman = student.getXb() == 1 ? "checked" : "";
		String nicheng = student.getNicheng() == null ? "" :student.getNicheng();
		String truename = student.getTruename() == null ? "" :student.getTruename();
		String csrq = student.getCsrq() == null ? "" : student.getCsrq();
		String zy = student.getZy() == null ? "" : student.getZy();
		String kc = student.getKc() == null ? "" : student.getKc();
		String xq = student.getXq() == null ? "" : student.getXq();
		String bz = student.getBz() == null ? "" : student.getBz();
		/* System.out.println("需要修改的学生"+student.toString());
		System.out.println("isMan："+isMan);
		System.out.println("isWoman："+isWoman); */
		%>
		<h2>修改学生信息</h2>
	    <form action="updateStudent.jsp" method="post">
	    	<input  type="hidden"   name="id"      value="<%=student.getId() %>"/> 
			昵称：<input type="text" name="nicheng"  value="<%=nicheng %>"/><br />
			姓名：<input type="text" name="truename"  value="<%=truename %>"/><br />
			性别：<input type="radio" name="xb" value="0"  <%=isMan %>  />男<input type="radio" name="xb" value="1"   <%=isWoman %> />女<br />
			出生日期：<input  name="csrq" onFocus="setday(this);" size="9" maxlength="10" style="border:1px solid #ff9900;background-color:#fff0e1; height:20px; line-height:20px; padding:0 5px;" readonly value="<%=csrq %>"/><br />
			专业：<input type="text" name="zy"  value="<%=zy %>"/><br />
			课程：<input type="text" name="kc"  value="<%=kc %>"/><br />
			兴趣：<input type="text" name="xq"  value="<%=xq %>"/><br />
			备注：<input type="text" name="bz"  value="<%=bz %>"/><br />
			<input type="submit" value="修改" />
		</form>
</body>
</html>