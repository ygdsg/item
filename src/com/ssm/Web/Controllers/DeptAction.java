package com.ssm.Web.Controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssm.Entity.Dept;
import com.ssm.Service.DeptService;

@Controller
@RequestMapping(value="/dept")
public class DeptAction 
{
	@Autowired
	private DeptService deptServiceImpl ;
	
	@RequestMapping(value="/addDept")
	public String addDept(Dept d)
	{
		deptServiceImpl.addDeptService(d);
		return  "depts/Depts_add_success";
	}
	
	@RequestMapping(value="/deptList")
	public String getAllDept(Model m)
	{
		m.addAttribute("depts", deptServiceImpl.getAllDeptService());
		return  "depts/Depts_list_success";
	}
	
	@RequestMapping(value="/removeDept")
	public String removeDept(HttpServletRequest request)
	{
		int did = Integer.parseInt(request.getParameter("did"));
		deptServiceImpl.removeDeptByIdService(did);
		return  "redirect:/dept/deptList";
	}
}
