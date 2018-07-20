package com.app.pojos;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Student {
	private Integer regno;
	private Courses course;
	private Date regdate;
	private Date dob;
	private String fname;
	private String lname;
	private String email;
	private String password;
	private String gender;
	private String imgpath;
	private String country;
	private String state;
	private String district;
	private String city;
	private String address;
	private long contact;
	private boolean accstatus;
	private boolean placed;
	private Date lastlogin;
	private String pgcourse;
	private String pgstream;
	private int pgyear;
	private float pgpercent;
	private String gradcourse;
	private String gradstream;
	private int gradyear;
	private float gradpercent;
	private boolean hsc;
	private int hscyear;
	private float hscpercent;
	private String diplomastream;
	private int diplomayear;
	private float diplomapercent;
	private int sscyear;
	private float sscpercent;
	
	public int getSscyear() {
		return sscyear;
	}

	public void setSscyear(int sscyear) {
		this.sscyear = sscyear;
	}

	public float getSscpercent() {
		return sscpercent;
	}

	public void setSscpercent(float sscpercent) {
		this.sscpercent = sscpercent;
	}

	public void setContact(long contact) {
		this.contact = contact;
	}

	@JoinColumn(name="courseid")
	@ManyToOne
	public Courses getCourse() {
		return course;
	}

	public void setCourse(Courses course) {
		this.course = course;
	}

	public Student(String fname, String lname, String email, String password) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.password = password;
	}

	public Student()
	{
		System.out.println("In def Cons Student");	
	}

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	public Integer getRegno() {
		return regno;
	}

	public void setRegno(Integer regno) {
		this.regno = regno;
	}

	@Temporal(TemporalType.DATE)
	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	@Temporal(TemporalType.DATE)
	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	@Column(length=20)
	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}
	
	@Column(length=20)
	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	@Column(length=50,unique=true)
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(length=250)
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(length=20)
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Column(length=100)
	public String getImgpath() {
		return imgpath;
	}

	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}

	@Column(length=40)
	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	@Column(length=40)
	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	@Column(length=40)
	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	@Column(length=40)
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@Column(length=60)
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Column(columnDefinition="boolean default false")
	public boolean isAccstatus() {
		return accstatus;
	}

	public void setAccstatus(boolean accstatus) {
		this.accstatus = accstatus;
	}

	@Column(columnDefinition="boolean default false")
	public boolean isPlaced() {
		return placed;
	}

	public void setPlaced(boolean placed) {
		this.placed = placed;
	}

	@Temporal(TemporalType.TIMESTAMP)
	public Date getLastlogin() {
		return lastlogin;
	}

	public void setLastlogin(Date lastlogin) {
		this.lastlogin = lastlogin;
	}

	@Column(length=30)
	public String getPgcourse() {
		return pgcourse;
	}

	public void setPgcourse(String pgcourse) {
		this.pgcourse = pgcourse;
	}

	@Column(length=30)
	public String getPgstream() {
		return pgstream;
	}

	public void setPgstream(String pgstream) {
		this.pgstream = pgstream;
	}

	public int getPgyear() {
		return pgyear;
	}

	public void setPgyear(int pgyear) {
		this.pgyear = pgyear;
	}

	
	public float getPgpercent() {
		return pgpercent;
	}

	public void setPgpercent(float pgpercent) {
		this.pgpercent = pgpercent;
	}

	@Column(length=30)
	public String getGradcourse() {
		return gradcourse;
	}

	public void setGradcourse(String gradcourse) {
		this.gradcourse = gradcourse;
	}

	@Column(length=30)
	public String getGradstream() {
		return gradstream;
	}

	public void setGradstream(String gradstream) {
		this.gradstream = gradstream;
	}

	public int getGradyear() {
		return gradyear;
	}

	public void setGradyear(int gradyear) {
		this.gradyear = gradyear;
	}

	public float getGradpercent() {
		return gradpercent;
	}

	public void setGradpercent(float gradpercent) {
		this.gradpercent = gradpercent;
	}

	public boolean isHsc() {
		return hsc;
	}

	public void setHsc(boolean hsc) {
		this.hsc = hsc;
	}

	public int getHscyear() {
		return hscyear;
	}

	public void setHscyear(int hscyear) {
		this.hscyear = hscyear;
	}

	public float getHscpercent() {
		return hscpercent;
	}

	public void setHscpercent(float hscpercent) {
		this.hscpercent = hscpercent;
	}

	@Column(length=40)
	public String getDiplomastream() {
		return diplomastream;
	}

	public void setDiplomastream(String diplomastream) {
		this.diplomastream = diplomastream;
	}

	public int getDiplomayear() {
		return diplomayear;
	}

	public void setDiplomayear(int diplomayear) {
		this.diplomayear = diplomayear;
	}

	public float getDiplomapercent() {
		return diplomapercent;
	}

	public void setDiplomapercent(float diplomapercent) {
		this.diplomapercent = diplomapercent;
	}

	public long getContact() {
		return contact;
	}
	
	}
