<%@page import="com.jkxy.model.UserBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	UserBean user = (UserBean)session.getAttribute("user");
	if(null == user){
		%>
		<<jsp:forward page="index.jsp"></jsp:forward>
		<%
	}
%>