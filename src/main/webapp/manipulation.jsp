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
<%
Configuration cfg=new Configuration();
cfg.configure("hibernate.cfg.xml");
SessionFactory sf=cfg.buildSessionFactory();
Session ses=sf.openSession();
ses.beginTransaction();
String hql="update User set password =:password where id=:id";
Query q=ses.createQuery(hql);
q.setParameter("password","testing123");
q.setParameter("id",1);
int rowaffected=q.executeUpdate();
if(rowaffected>0)
out.println("updated" +rowaffected + "rows");
/* String hql1="delete from User where id=:id";
q=ses.createQuery(hql1);
q.setParameter("id",3);
rowaffected=q.executeUpdate();
if(rowaffected>0)
out.println("deleted" +rowaffected + "rows"); */

String hql1="select count(*)from User u";
q=ses.createQuery(hql1);
List results=q.list();
out.println(results.get(0));
ses.getTransaction().commit();
ses.close();
sf.close();
%>
</body>
</html>