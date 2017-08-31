<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="javascript/calendar.js" ></script>
<link rel="stylesheet" href="css/calendar.css" />
</head>
<body>
	<h2>录入学生信息</h2>
	    <form action="insertStudentAction.jsp" method="post">
			昵称：<input type="text" name="nicheng"  /><br />
			姓名：<input type="text" name="truename"  /><br />
			性别：<input type="radio" name="xb" value="0" checked />男<input type="radio" name="xb" value="1"  />女<br />
			出生日期：<input  name="csrq" onFocus="setday(this);" size="9" maxlength="10" style="border:1px solid #ff9900;background-color:#fff0e1; height:20px; line-height:20px; padding:0 5px;" readonly /><br />
			专业：<input type="text" name="zy"  /><br />
			课程：<input type="text" name="kc"  /><br />
			兴趣：<input type="text" name="xq"  /><br />
			备注：<input type="text" name="bz"  /><br />
			<input type="submit" value="保存" />
		</form>
</body>
</html>