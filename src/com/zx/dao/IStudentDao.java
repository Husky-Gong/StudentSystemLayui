package com.zx.dao;

import java.util.List;
import java.util.Map;

import com.zx.pojo.Student;

public interface IStudentDao {

	List<Student> selectStudent(Map<String, Object> params);

	void insert(String studentNumber, String name, String age, String sex, String phone, String city, String info);

}
