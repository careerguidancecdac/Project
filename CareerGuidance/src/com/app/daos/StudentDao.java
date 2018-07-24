package com.app.daos;
import com.app.pojos.*;

public interface StudentDao {
	public boolean registerStudent(Student s);
	public Student getStudentByEmail(String email);
	public boolean activateAccount(String email);
	public boolean validateLogin(String email,String password);
}
