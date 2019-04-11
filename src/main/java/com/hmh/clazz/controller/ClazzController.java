package com.hmh.clazz.controller;

import com.hmh.clazz.service.ClazzService;
import com.hmh.department.service.DepartmentService;
import com.hmh.entity.Clazz;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

@Controller
@RequestMapping("clazz.do")
public class ClazzController {

	@Resource(name = "clazzServiceImpl")
	ClazzService clazzService;

	@Resource(name = "departmentServiceImpl")
	DepartmentService departmentService;

	@RequestMapping("clazz.view")
	public String clazzView(Model model) {
		model.addAttribute("clazzList", clazzService.clazzList());
		return "admin/college/class";
	}

	@RequestMapping("clazz_add.view")
	public String addView(Model model) {
		model.addAttribute("deptList", departmentService.departmentList());
		return "admin/college/class_add";
	}

	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String add(Clazz clazz) {
		clazzService.add(clazz);
		return "redirect: clazz.view";
	}

	@RequestMapping("delete")
	public String delete(int id) {
		clazzService.delete(id);
		return "redirect: clazz.view";
	}
}
