package com.zx.pojo;

public class Student {
	private String studentNumber;
	private String name;
	private int age;
	private int sex;
	private String phone;
	private String city;
	private String info;
	public Student(String studentNumber, String name, int age, int sex, String phone, String city, String info) {
		super();
		this.studentNumber = studentNumber;
		this.name = name;
		this.age = age;
		this.sex = sex;
		this.phone = phone;
		this.city = city;
		this.info = info;
	}
	public String getStudentNumber() {
		return studentNumber;
	}
	public void setStudentNumber(String studentNumber) {
		this.studentNumber = studentNumber;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	
	
}
