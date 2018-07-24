package com.app.controllers;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.daos.StudentDao;
import com.app.pojos.Student;
import com.app.utils.DataUtils;

@RequestMapping("/student")
@Controller
public class StudentController {

	@Autowired
	StudentDao studao;
	
	@GetMapping("/register")
	public String getRegisterationForm(Model map)
	{
		map.addAttribute("student", new Student());
		return "student/stu_register";
	}
	
	@PostMapping("/register")
	public String registerStudent(@ModelAttribute Student student,Model map) throws NoSuchAlgorithmException, UnsupportedEncodingException
	{
		student.setPassword(DataUtils.generateHash(student.getPassword()));
		DataUtils.sendEmail(student.getEmail());
		if(studao.registerStudent(student))
		{
			map.addAttribute("student",student);
			return "student/emailconfirm";
		}
		else
		{
			return "student/registeration_error";
		}
	}
	
	@GetMapping("/activateaccount")
	public String activateAccount(@RequestParam String email)
	{
		
		studao.activateAccount(email);
		return "student/login";
	}
	
	@GetMapping("/login")
	public String getLogin(Model map)
	{
		map.addAttribute("student", new Student());
		return "student/login";
	}
	
	@PostMapping("/login")
	public String validateLogin(@ModelAttribute Student student,Model map,HttpSession sess) throws NoSuchAlgorithmException, UnsupportedEncodingException
	{
		if(studao.validateLogin(student.getEmail(), DataUtils.generateHash(student.getPassword())))
		{
			sess.setAttribute("student", studao.getStudentByEmail(student.getEmail()));
			return "student/profile";
		}
		else
		{
			map.addAttribute("errormessage", "Invalid Login");
			return "redirect:login";
		}
	}
	
	@GetMapping("/profilecomplete")
	public String getProfileCompletion(Model map,HttpSession sess)
	{
		map.addAttribute("student", sess.getAttribute("student"));
		return "student/profilecomplete";
	}
}
