package com.app.daos;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.app.pojos.Courses;
import com.app.pojos.Student;

public interface CourseDao{
	public List<Courses> getCourses();
	public boolean registerStudent(Student s);
}
