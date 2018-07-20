package com.app.daos;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.app.pojos.Courses;

@Component
@Transactional
public class CourseDaoImpl implements CourseDao {

	@Autowired
	private SessionFactory factory;
	
	@Override
	public List<Courses> getCourses() {
		String sql = "select c from Courses c";
		return factory.getCurrentSession().createQuery(sql).getResultList();
	}

}
