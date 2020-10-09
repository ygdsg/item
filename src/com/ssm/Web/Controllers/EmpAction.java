package com.ssm.Web.Controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssm.Entity.Emp;
import com.ssm.Service.DeptService;
import com.ssm.Service.EmpService;

@Controller
@RequestMapping(value="/emp")
public class EmpAction 
{
	@Autowired 
	private DeptService deptServiceImpl ;
	@Autowired
	private EmpService empServiceImpl ;
	
	@RequestMapping(value="getDept")
	public String getDept(Model m)
	{
		m.addAttribute("depts", deptServiceImpl.getAllDeptService());
		return "emps/Emps_add";
	}
	
	@RequestMapping(value="/addEmp")
	public String addEmp(Emp e)
	{
		empServiceImpl.addEmpService(e);
		return "emps/Emps_add_success";
	}
	
	@RequestMapping(value="/empList")
	public String empList(Model m)
	{
		int pageSize = 3 ;
		int pageNow = 1 ;
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("n", pageSize *(pageNow - 1));
		map.put("m", pageSize);
		List<Emp> emps = empServiceImpl.getEmpsLimitService(map);
		m.addAttribute("emps", emps);
		return "emps/Emps_list_success";
	}
	
	@RequestMapping(value="deleteEmp/{id}")
	public String deleteEmpById(@PathVariable(value="id")Integer id)
	{
		empServiceImpl.deleteEmpById(id);
		return "redirect:/emp/empList";
	}
	
	@RequestMapping(value="updateEmp/{id}")
	public String updateEmp(Model m , @PathVariable(value="id")Integer id)
	{
		m.addAttribute("emp", empServiceImpl.getEmpByIdService(id));
		m.addAttribute("depts", deptServiceImpl.getAllDeptService());
		return "emps/Emps_update";
	}
	
	@RequestMapping(value="updateEmp_success")
	public String updateEmp_success(Emp emp)
	{
		System.out.println(emp);
		empServiceImpl.updateEmpService(emp);
		return "emps/Emps_update_success";
	}
}
