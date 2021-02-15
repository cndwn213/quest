package com.ch.ch08.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ch.ch08.model.Dept;
import com.ch.ch08.service.DeptService;
@Controller
public class DeptController {
	@Autowired
	private DeptService ds;
	@RequestMapping("deptList")
	public String deptList(Model model) {
		List<Dept> list = ds.list();
		model.addAttribute("list", list);
		return "/dept/deptList";
	}
	@RequestMapping("insertDeptForm")
	public String insertDeptForm() {	
		return "/dept/insertDeptForm";
	}
	@RequestMapping("deptInsert")
	public String deptInsert(Dept dept, Model model) {
		int result = 0;
		// 부서코드가 중복됐는지 체크 
		Dept dt = ds.select(dept.getDeptno());
		if(dt == null) result=ds.insert(dept);
		else result=-1;
		model.addAttribute("result", result);
		return "/dept/deptInsert";
	}
	@RequestMapping("updateDeptForm")
	public String updateDeptForm(int deptno,Model model) {
		Dept dept = ds.select(deptno);
		model.addAttribute("dept", dept);
		return "/dept/updateDeptForm";
	}
	@RequestMapping("deptUpdate")
	public String deptUpdate(Dept dept, Model model) {
		int result = 0;
		result=ds.update(dept);
		model.addAttribute("result", result);
		return "/dept/deptUpdate";
	}
	@RequestMapping("deleteDept")
	public String deleteDept(int deptno, Model model) {
		int result = ds.delete(deptno);
		model.addAttribute("result", result);
		return "/dept/deleteDept";
	}
	@RequestMapping(value= "deptNoChk",
			produces = "text/html;charset=utf-8")
	@ResponseBody
	public String deptNoChk(int deptno) {
		String data="";
		Dept dept = ds.select(deptno);
		if(dept==null)
			data = "사용 가능한 부서코드입니다.";
		else data = "이미 사용중인 부서코드입니다.";
		return data;
	}
}
