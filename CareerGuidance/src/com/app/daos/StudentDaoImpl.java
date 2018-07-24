package com.app.daos;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.app.pojos.Student;

@Component
@Transactional
public class StudentDaoImpl implements StudentDao {

	@Autowired
	private SessionFactory factory;
	
	@Override
	public boolean registerStudent(Student s) {
	
		try{
		factory.getCurrentSession().save(s);
		return true;
		}
		catch(HibernateException e)
		{
		return false;
		}
	}
	
	@Override
	public Student getStudentByEmail(String email)
	{
		String sql = "select s from Student s where s.email=:em";
		return factory.getCurrentSession().createQuery(sql, Student.class).setParameter("em", email).getSingleResult();
	}
	
	@Override
	public boolean activateAccount(String email)
	{
		Student s = getStudentByEmail(email);
		s.setAccstatus(true);
		return true;
	}
	
	@Override
	public boolean validateLogin(String email,String password)
	{
		String sql = "select count(*) from Student s where s.email=:em and s.password=:pwd";
		long count = (long)factory.getCurrentSession().createQuery(sql).setParameter("em", email).setParameter("pwd", password).getSingleResult();
		if(count>0)
			return true;
		else
			return false;
	}
}
