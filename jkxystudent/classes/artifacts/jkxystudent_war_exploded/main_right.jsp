<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.jkxy.model.StudentBean"%>
<%@ page import="java.util.List"%>
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
	List<StudentBean> list = studentservice.getStudents();
	//System.out.println("list.size:"+list.size());
	/* for(int i=0;i<list.size();i++){
		StudentBean bean = (StudentBean)list.get(i);
		out.print("student:"+bean.toString());
	} */
	%>
	<table border="1" cellspacing="" cellpadding="">
		<tr>
			<th>昵称</th>
			<th>姓名</th>
			<th>性别</th>
			<th>出生日期</th>
			<th>专业</th>
			<th>课程</th>
			<th>兴趣</th>
			<th>备注</th>
		</tr>
		<%
			for(int i=0;i<list.size();i++){
				StudentBean bean = (StudentBean)list.get(i);
				/* SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
				String dateStr=sdf.format(bean.getCsrq()); */
				%>
		<tr>
			<td><%=bean.getNicheng() == null ? "--" :bean.getNicheng() %></td>
			<td><%=bean.getTruename() == null ? "--":bean.getTruename() %></td>
			<td><%=bean.getXb() == 0 ? "男" : "女" %></td>
			<td><%=bean.getCsrq() == null ? "--": bean.getCsrq() %></td>
			<td><%=bean.getZy() == null ? "--": bean.getZy() %></td>
			<td><%=bean.getKc() == null ? "--":bean.getKc() %></td>
			<td><%=bean.getXq() == null ? "--" :bean.getXq() %></td>
			<td><%=bean.getBz() == null ? "--" :bean.getBz()  %></td>
		</tr>
		<% 
			}
		
			%>


	</table>
</body>
</html>