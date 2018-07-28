package com.app.controllers;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.daos.CourseDao;
import com.app.daos.StudentDao;
import com.app.daos.TestDao;
import com.app.pojos.Chapter;
import com.app.pojos.Courses;
import com.app.pojos.DailyTest;
import com.app.pojos.Module;
import com.app.pojos.QuestionSet;
import com.app.pojos.Student;
import com.app.pojos.StudentResponse;
import com.app.pojos.StudentResponseId;
import com.app.pojos.TestId;
import com.app.utils.DataUtils;

@RequestMapping("/student")
@Controller
public class StudentController {

	@Autowired
	StudentDao studao;
	@Autowired
	CourseDao cdao;
	@Autowired
	TestDao tdao;
	
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
		System.out.println("In Activate Account"+ "Email = "+email);
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
			map.addAttribute("student", new Student());
			return "student/login";
		}
	}
	
	@GetMapping("/profilecomplete")
	public String getProfileCompletion(Model map,HttpSession sess)
	{
		System.out.println(sess.getAttribute("student"));
		if(sess.getAttribute("student")!=null)
		{
			map.addAttribute("student", sess.getAttribute("student"));
			return "student/profilecomplete";
		}
		else{
			return "student/login";
		}
	}
	
	@PostMapping("/profilecomplete")
	public String completeProfile(@ModelAttribute Student student)
	{
		System.out.println("IN POST");
		System.out.println(student);
		studao.updateProfile(student);
		return "student/profile";
	}
	
	@GetMapping("/todaystask")
	public String getTask(Model map,HttpSession sess)
	{
		/*List<Chapter> chaps = new ArrayList<>();
		for(Object[] x:studao.getChap(1))
		{
			Chapter c = new Chapter();
			c.setChapterid((int)x[0]);
			c.setChaptername((String) x[1]);
			c.setDescription( (String) x[2]);
			c.setWebsitelinks((String)x[3]);
			c.setYoutubelinks((String)x[4]);
			c.setModuleid(cdao.getModuleById((int)x[5]));
			c.setTestid(tdao.getTestById((int)x[6]));
			chaps.add(c);
		}
		sess.setAttribute("task", chaps);*/
	
	List<Chapter> chaps = studao.getChaptersNative(((Student)sess.getAttribute("student")).getRegno());
	sess.setAttribute("task", chaps);
	for(Chapter c:chaps)
		System.out.println(c.getTestid().getTestid());
		return "student/task";
	}
	
	@GetMapping("/course")
	public String getCoursePage(Model map)
	{
		map.addAttribute("courses",cdao.getCourses());
		return "student/courses";
	}
	
	@GetMapping("/registerCourse/{courseid}")
	public String registerStudentToCourse(@PathVariable int courseid,HttpSession sess,Model map)
	{
		Student s =(Student)sess.getAttribute("student");
		if(s.getCourse().getCourseid() > 0)
		{
			map.addAttribute("regcou", "You have already Registered to course.You need to complete current course before starting new course");
			return "student/profile";
		}
		if(s.isProfilecompleted()!=true)
			return "redirect:student/profilecomplete";
		Courses c = cdao.getCourseById(courseid);
		studao.registerWithCourse(s.getRegno(), c);
		cdao.registerStudentToCourse(studao.getStudentById(s.getRegno()), c.getCourseid());
		return "redirect:student/profile";
	}
	
	@GetMapping("/profile")
	public String getProfile()
	{
		return "student/profile";
	}
	
	@GetMapping("/taskcomplete")
	public String scheduleTest(@RequestParam int testid,HttpSession sess)
	{
		sess.setAttribute("testwarnmsg", "Your Test has been scheduled.Please visit Today's Test and give the Test.You will not be able to proceed further without giving test");
		sess.setAttribute("test_id", testid);
		sess.setAttribute("questions", studao.getQuesionsByTestId(testid));
		return "redirect: profile";
	}
	
	@GetMapping("/todaystest")
	public String giveTest(Model map)
	{
		map.addAttribute("studentres", new StudentResponse());
		return "student/test";
	}
	
	@PostMapping("/saveresponse")
	public String saveStudentResponse(HttpSession sess,HttpServletRequest req)
	{
		
		for(int i=1;i<=10;i++)
		{
			studao.saveStudentResponse(req.getParameter("question"+i+"_option"), Integer.parseInt(req.getParameter("qid"+i)),Integer.parseInt(req.getParameter("regno")));
		}
		studao.updateMarks(((Student)sess.getAttribute("student")).getRegno(), (int)sess.getAttribute("test_id"));
		
		return "redirect:profile";
	}
	
	/*@GetMapping("/testMarks")
	public String testMarks(HttpSession sess)
	{
		System.out.println(sess.getAttribute("student")+" "+sess.getAttribute("questions"));
		studao.updateMarks(((Student)sess.getAttribute("student")).getRegno(), (int)sess.getAttribute("test_id"));
		return "redirect:profile";
	}*/
}
