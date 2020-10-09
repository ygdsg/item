package com.ssm.Service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssm.Dao.DeptDao;
import com.ssm.Entity.Dept;
import com.ssm.Service.DeptService;

@Service
@Transactional
public class DeptServiceImpl implements DeptService
{
	@Autowired
	private DeptDao deptDao ;
	@Override
	public boolean addDeptService(Dept d) 
	{
		return deptDao.addDept(d) > 0;
	}
	@Override
	public List<Dept> getAllDeptService() 
	{
		return deptDao.getAllDept();
	}
	@Override
	public boolean removeDeptByIdService(int id) 
	{
		return deptDao.removeDeptById(id) > 0;
	}
}
