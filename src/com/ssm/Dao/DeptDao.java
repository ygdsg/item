package com.ssm.Dao;

import java.util.List;

import com.ssm.Entity.Dept;

public interface DeptDao 
{
	List<Dept> getAllDept();
	String getDeptNameById(Integer id);
	int addDept(Dept d);
	int removeDeptById(int id);
}
