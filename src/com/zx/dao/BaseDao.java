package com.zx.dao;

import java.lang.reflect.Field;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;
import java.util.List;

import com.zx.util.JdbcUtil;

public class BaseDao {

	/*
	 * 1. set connection to database
	 * 2. get prepared statement
	 * 3. run sql statement
	 * 4. loop result set and store every object in return list
	 */
	public <T> List<T> selectList(String sql, Class<T> cls, Object... param) {
		Connection conn= JdbcUtil.conn();
		List<T> list = new ArrayList<T>();
		PreparedStatement prep = null;
		ResultSet rs = null;
		
		try {
			prep = conn.prepareStatement(sql);
			// set sql parameters
			for(int i=0; i<param.length;i++) {
				prep.setObject(i+1, param[i]);
			}
			rs=prep.executeQuery();
			
			// get column number
			ResultSetMetaData metaData = rs.getMetaData();
			int columnCount = metaData.getColumnCount();
			
			/*
			 * Get every object in result set and put it into list
			 */
			while(rs.next()) {
				T t = cls.getConstructor().newInstance();
				for(int i=1;i<=columnCount;i++) {
					// get every column name
					String columnLabel = metaData.getColumnLabel(i);
					
					// get value from result set with the column name
					Object object = rs.getObject(columnLabel);
					
					//use reflection to create cls object
					Field field = cls.getDeclaredField(columnLabel);
					
					// set object value
					field.setAccessible(true);
					field.set(t, object);
					field.setAccessible(false);
				}
				list.add(t);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn, prep);
		}
		return list;
	}

}
