<%@ page import="java.util.*,
org.hibernate.*,org.hibernate.boot.*,
org.hibernate.cfg.Configuration, java.util.*,org.hibernate.boot.registry.StandardServiceRegistryBuilder,
com.niit.hibernate.Employee" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
SessionFactory sf=cfg.buildSessionFactory(new StandardServiceRegistryBuilder().configure().build());
Session ses=sf.openSession();
ses.beginTransaction();
    	Employee e1=new Employee();
    	e1.setEmployeeName("Shivani");
    	Set<String>phoneNumbers=new HashSet<String>();
    	phoneNumbers.add("8778899");
    	phoneNumbers.add("8778892");
    	phoneNumbers.add("8778895");
    	e1.setPhoneNumbers(phoneNumbers);
    	ses.save(e1);
    	Query query = ses.createQuery("from Employee");
List<Employee> list = query.list();

Iterator<Employee> itr = list.iterator();
while (itr.hasNext()) {
Employee emp = itr.next();
out.println("Employee Name: " + emp.getEmployeeName());

// printing answers
Set<String> set = emp.getPhoneNumbers();
Iterator<String> itr2 = set.iterator();
while (itr2.hasNext()) {
out.println(itr2.next());
}
out.println("<br>");
}
ses.close();
out.println("success");
%>
</body>
</html>