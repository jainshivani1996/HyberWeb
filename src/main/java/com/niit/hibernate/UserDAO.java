package com.niit.hibernate;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;



public class UserDAO {
	
	public static int register(User u)
	{
		int cnt=0;
		Configuration cfg=new Configuration();
        cfg.configure("hibernate.cfg.xml");
        SessionFactory sf=cfg.buildSessionFactory();
        Session ses=sf.openSession();
        Transaction t=ses.beginTransaction();
    
        cnt=(Integer)ses.save(u);
       //it is inserting the record
        t.commit();
        
        ses.close();
       
        return cnt;
	}
	public static List display()
	{
		
		Configuration cfg=new Configuration();
        cfg.configure("hibernate.cfg.xml");
        SessionFactory sf=cfg.buildSessionFactory();
        Session ses=sf.openSession();
        ses.beginTransaction();
   Query q=ses.createQuery("from User");
       List<User> l=(List<User>)q.list();
        ses.close();
       
        return l;
	}
	public static List displayName()
	{
		
		Configuration cfg=new Configuration();
        cfg.configure("hibernate.cfg.xml");
        SessionFactory sf=cfg.buildSessionFactory();
        Session ses=sf.openSession();
        ses.beginTransaction();
   Query q=ses.createQuery("select u.name from User u");
       List<User> l=(List<User>)q.list();
        ses.close();
       
        return l;
	}
	public static List TotalEmployees()
	{
		
		Configuration cfg=new Configuration();
        cfg.configure("hibernate.cfg.xml");
        SessionFactory sf=cfg.buildSessionFactory();
        Session ses=sf.openSession();
        ses.beginTransaction();
   Query q=ses.createQuery("select cout(*) from User ");
       List<User> l=(List<User>)q.list();
        ses.close();
       
        return l;
	}

	

}
