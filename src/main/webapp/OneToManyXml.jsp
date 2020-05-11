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
	Configuration configuration = new Configuration();
	configuration.configure("hibernate.cfg.xml");
	SessionFactory factory = configuration.buildSessionFactory(new StandardServiceRegistryBuilder().configure().build());
	Session sess= factory.openSession();
	Transaction tx = sess.getTransaction();
	tx.begin();
	Category category = new Category("Computer");

	Product pc = new Product("DELL PC", "Quad-core PC", 1200, category);

	Product laptop = new Product("MacBook", "Apple High-end laptop", 2100, category);

	Product phone = new Product("iPhone 5", "Apple Best-selling smartphone", 499, category);

	Product tablet = new Product("iPad 3", "Apple Best-selling tablet", 1099, category);
	Set<Product>products=new HashSet<Product>();
	products.add(pc);
	products.add(laptop);
	products.add(phone);
	products.add(tablet);
	category.setProducts(products);
	sess.save(category);
	tx.commit();
%>
</body>
</html>