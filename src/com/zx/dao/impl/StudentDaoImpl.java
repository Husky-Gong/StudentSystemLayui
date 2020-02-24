package com.zx.dao.impl;

import java.util.List;
import java.util.Map;

import com.zx.dao.BaseDao;
import com.zx.dao.IStudentDao;
import com.zx.pojo.Student;

public class StudentDaoImpl extends BaseDao implements IStudentDao {

	@Override
	public List<Student> selectStudent(Map<String, Object> params) {
		String sql = "select studentNumber, name, age, sex, phone, city, info from student where";
		if(params.containsKey("studentNumber")) {
			sql += " studentNumber="+params.get("studentNumber");
		}
		if(params.containsKey("phone")) {
			sql += " phone="+params.get("phone");
		}
		return super.selectList(sql,Student.class);
	}

	@Override
	public void insert(String studentNumber, String name, String age, String sex, String phone, String city,
			String info) {
		// TODO Auto-generated method stub
		
	}
		
}
