package com.zx.common;

import java.util.List;

public class PageInfo<T> {
	// Current page number
	private int pageNumber;
	// max value of one page
	private int pageLimit;
	// total number of data
	private int count;
	// collection of data
	private List<T> data;
	
	
	public PageInfo() {
		super();
	}


	public PageInfo(int pageNumber, int pageLimit, int count, List<T> data) {
		super();
		this.pageNumber = pageNumber;
		this.pageLimit = pageLimit;
		this.count = count;
		this.data = data;
	}


	public int getPageNumber() {
		return pageNumber;
	}


	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}


	public int getPageLimit() {
		return pageLimit;
	}


	public void setPageLimit(int pageLimit) {
		this.pageLimit = pageLimit;
	}


	public int getCount() {
		return count;
	}


	public void setCount(int count) {
		this.count = count;
	}


	public List<T> getData() {
		return data;
	}


	public void setData(List<T> data) {
		this.data = data;
	}
	
	
}
