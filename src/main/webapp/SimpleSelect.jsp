<%@page import="com.niit.hibernate.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" import="com.niit.hibernate.*,org.hibernate.*,org.hibernate.cfg.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%Configuration cfg=new Configuration();
cfg.configure("hibernate.cfg.xml");
SessionFactory sf=cfg.buildSessionFactory();
Session ses=sf.openSession();
ses.beginTransaction();
List<User> l=(List<User>)UserDAO.display();
out.println("<table border='1px' height='30%' width='30%' style='font-weight:bold'><thead><tr bgcolor='red'><th>ID</th><th>Name</th><th>Email</th><tr></thead>");
for(User u:l)
{
	out.println("<tr bgcolor='cyan'><td>"+u.getId()+" </td><td> "+u.getName()+" </td><td> "+u.getEmail()+"</td><tr>");
}

out.println("</table>");
Query q=ses.createQuery("select U.name from User U ");

List<String> l1=(List<String>)q.list();
out.println("<table border='1px' height='30%' width='30%' style='font-weight:bold'><thead><tr bgcolor='red'><th>Name</th><tr></thead>");
for(String u:l1)
{
	out.println("<tr bgcolor='cyan'><td> "+u+" </td><tr>");
}

out.println("</table>");
Query qc=ses.createQuery("select count(*) from User ");

List<Integer> l5=(List<Integer>)qc.list();
out.println("Total Employees are"+l5.get(0) );
Query q1=ses.createQuery("from User U where U.id=:id ");
q1.setInteger("id",2);
List<User> l3=(List<User>)q1.list();
out.println("<table border='1px' height='30%' width='30%' style='font-weight:bold'><thead><tr bgcolor='red'><th>ID</th><th>Name</th><th>Email</th><tr></thead>");
for(User u:l3)
{
	out.println("<tr bgcolor='cyan'><td>"+u.getId()+" </td><td> "+u.getName()+" </td><td> "+u.getEmail()+"</td><tr>");
}

out.println("</table>");


ses.close();





%>
</body>
</html>