<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="org.hibernate.*,
org.hibernate.cfg.Configuration,
com.niit.hibernate.Person1,
com.niit.hibernate.Employee1,
java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inheritance mapping</title>
</head>
<body>
<% 
Configuration cfg = new Configuration();
cfg.configure("hibernate.cfg.xml");
SessionFactory factory = cfg.buildSessionFactory();
Session sess= factory.openSession();
sess.beginTransaction();
Person1 person=new Person1("Steve","Balmer");
sess.save(person);
Employee1 emp=new Employee1("James","Gosling",new Date(),"Marketing");
sess.save(emp);
out.println("Saved successfully");
sess.getTransaction().commit();
sess.close();

%>
</body>
</html>