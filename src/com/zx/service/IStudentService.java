package com.zx.service;

import com.zx.common.Result;

public interface IStudentService {
	public Result add(String studentNumber, String name, String age, String sex, String phone, String city, String info);
}
