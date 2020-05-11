<%@page import="com.niit.hibernate.User"%>
<%@page import="com.niit.hibernate.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:useBean id="userBean" class="com.niit.hibernate.User"></jsp:useBean>
<jsp:setProperty property="*" name="userBean"/>
<%


int i=UserDAO.register(userBean);
if(i>0)
{out.println("Success");}
%>
</head>
<body>

</body>
</html>