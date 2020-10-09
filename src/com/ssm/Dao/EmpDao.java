package com.ssm.Dao;

import java.util.List;
import java.util.Map;

import com.ssm.Entity.Emp;

public interface EmpDao 
{
	int addEmp(Emp e);
	List<Emp> getEmpsLimit(Map<String, Object> map);
	int deleteEmpById(Integer id);
	int updateEmp(Emp emp);
	Emp getEmpById(Integer id);
}
