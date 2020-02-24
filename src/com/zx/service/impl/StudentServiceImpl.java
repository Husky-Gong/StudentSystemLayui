package com.zx.service.impl;

import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import com.zx.common.Result;
import com.zx.dao.IStudentDao;
import com.zx.dao.impl.StudentDaoImpl;
import com.zx.pojo.Student;
import com.zx.service.IStudentService;

public class StudentServiceImpl implements IStudentService{
	static IStudentDao stDao = new StudentDaoImpl();
	/*
	 * Returned result is to show whether student is added successfully
	 * Result's attributes contain <String>code, <String>msg, <Object>data
	 */
	@Override
	public Result add(String studentNumber, String name, String age, String sex, String phone, String city,
			String info) {
		/*
		 * check whether student number has existed.
		 */
		Map<String,Object> stuNumber = new Hashtable<>();
		Map<String,Object> stuPhone = new Hashtable<>();
		stuNumber.put("studentNumber", studentNumber);
		stuPhone.put("phone", phone);
		List<Student> stuByNum = stDao.selectStudent(stuNumber);
		List<Student> stuByPhone = stDao.selectStudent(stuPhone);
		if(stuByNum!=null && !stuByNum.isEmpty())
			return new Result("4001","Student number exists!");
		if(stuByPhone!=null && !stuByPhone.isEmpty()) {
			return new Result("4002", "Phone number exists!");
		}
		stDao.insert(studentNumber,name,age,sex,phone,city,info);
		/*
		 * If success, return result
		 * code="200"
		 * msg="Success"
		 */
		return new Result();
	}
}
