<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page
import="org.hibernate.*,
org.hibernate.boot.*,
org.hibernate.boot.registry.StandardServiceRegistryBuilder,
org.hibernate.cfg.Configuration,
java.util.*,
com.niit.hibernate.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%Session s=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
Transaction t=s.beginTransaction();
Emp e=new Emp("Shivani",new Address(201301,"Noida","India"));
Emp e1=new Emp("Tanya",new Address(201301,"Noida","India"));
s.save(e);
s.save(e1);
t.commit();
s.close();
out.println("Successfully saved");
%>
</body>
</html>