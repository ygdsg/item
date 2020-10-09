package com.ssm.Service;

import java.util.List;
import java.util.Map;

import com.ssm.Entity.Emp;

public interface EmpService
{
	boolean addEmpService(Emp e);
	List<Emp> getEmpsLimitService(Map<String, Object> map);
	boolean deleteEmpById(Integer id);
	boolean updateEmpService(Emp emp);
	Emp getEmpByIdService(Integer id);
}
