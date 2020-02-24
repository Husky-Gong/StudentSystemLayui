package com.zx.common;

public class Result {
	// response code
	private String code;
	// response message
	private String msg;
	// response data
	private Object data;
	
	/*
	 * If success, will call this constructor
	 */
	public Result() {
		this.code = "200";
		this.msg = "Success";
	}
	
	/*
	 * If fail
	 */
	public Result(String code, String msg) {
		this.code = code;
		this.msg = msg;
	}
	
	public Result(Object data) {
		this();
		this.data = data;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}
}
