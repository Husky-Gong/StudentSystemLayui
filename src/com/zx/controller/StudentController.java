package com.zx.controller;

import java.io.IOException;
import java.util.Hashtable;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zx.common.Result;
import com.zx.service.IStudentService;
import com.zx.service.impl.StudentServiceImpl;


@WebServlet("/student.do")
public class StudentController extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = -2149914751987622307L;
	private static IStudentService stuService = new StudentServiceImpl();
	

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String service = req.getParameter("service");
		if("add".equals(service)) {
			add(req,resp);
		}
		else if("update".equals(service)) {
			update(req,resp);
		}
		else if("delete".equals(service)) {
			delete(req,resp);
		}
		else if("query".equals(service)) {
			query(req,resp);
		}
	}

	private void query(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		
	}

	private void delete(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		
	}

	private void update(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		
	}

	private void add(HttpServletRequest req, HttpServletResponse resp) {
		/*
		 * 1. get parameters from request;
		 * 2. use student service to add info
		 */
		Map<String, String> params = reqParam(req);
		Result rs = stuService.add(params.get("studentNumber"),
						params.get("name"),
						params.get("age"),
						params.get("sex"),
						params.get("phone"),
						params.get("city"),
						params.get("info"));
		RespWriter.
		
	}
	
	private Map<String, String> reqParam(HttpServletRequest req){
		String studentNumber = req.getParameter("studentNumber");
		String name = req.getParameter("name");
		String age = req.getParameter("age");
		String sex = req.getParameter("sex");
		String phone = req.getParameter("phone");
		String city = req.getParameter("city");
		String info = req.getParameter("info");
		
		Map<String, String> params = new Hashtable<>();
		params.put("studentNumber", studentNumber);
		params.put("name", name);
		params.put("age", age);
		params.put("sex", sex);
		params.put("phone", phone);
		params.put("city", city);
		params.put("info", info);
		
		return params;
	}
	
}
