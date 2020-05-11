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
<%
Configuration cfg = new Configuration();
cfg.configure("hibernate.cfg.xml");
SessionFactory factory = cfg.buildSessionFactory();
Session s= factory.openSession();
Transaction t = s.beginTransaction();
Job job = new Job();
job.setDesignation("Project Manager ");
job.setSalary(4500);
job.setJobDescription("Manages Team and Deliveries");

Person person = new Person();
person.setEmailAddress("person@company.com");
person.setJob(job);
person.setName("Person A");

s.save(person);
t.commit();
s.close();
s=factory.openSession();
Person p=(Person)s.get(Person.class,person.getId());
s.close();
factory.close();
%>
</body>
</html>