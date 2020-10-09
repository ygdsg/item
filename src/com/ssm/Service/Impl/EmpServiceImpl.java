package com.ssm.Service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssm.Dao.EmpDao;
import com.ssm.Entity.Emp;
import com.ssm.Service.EmpService;

@Service
@Transactional
public class EmpServiceImpl implements EmpService
{
	@Autowired
	private EmpDao empDao ;
	
	@Override
	public boolean addEmpService(Emp e) 
	{
		return empDao.addEmp(e) > 0;
	}

	@Override
	public List<Emp> getEmpsLimitService(Map<String, Object> map) 
	{
		return empDao.getEmpsLimit(map);
	}

	@Override
	public boolean deleteEmpById(Integer id)
	{
		return empDao.deleteEmpById(id) > 0;
	}

	@Override
	public boolean updateEmpService(Emp emp) 
	{
		return empDao.updateEmp(emp) > 0;
	}

	@Override
	public Emp getEmpByIdService(Integer id) 
	{
		return empDao.getEmpById(id);
	}

}
