package com.app.daos;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.app.pojos.Courses;

public interface CourseDao{
	public List<Courses> getCourses();
}
