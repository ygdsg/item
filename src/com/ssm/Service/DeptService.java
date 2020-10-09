package com.ssm.Service;

import java.util.List;

import com.ssm.Entity.Dept;

public interface DeptService 
{
	boolean addDeptService(Dept d);
	List<Dept> getAllDeptService();
	boolean removeDeptByIdService(int id);
}
