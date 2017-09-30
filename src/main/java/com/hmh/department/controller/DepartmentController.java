package com.hmh.department.controller;

import com.hmh.department.service.DepartmentService;
import com.hmh.entity.Department;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

@Controller
@RequestMapping("dept.do")
public class DepartmentController {

    @Resource(name = "departmentServiceImpl")
    DepartmentService departmentService;

    @RequestMapping("dept.view")
    public String deptView(Model model){
        model.addAttribute("departmentList", departmentService.departmentList());
        return "admin/college/department";
    }

    @RequestMapping("dept_add.view")
    public String addView(){
        return "admin/college/department_add";
    }

    @RequestMapping(value = "add", method = RequestMethod.POST)
    public String add(Department department){
        departmentService.add(department);
        return "redirect:dept.view";
    }

    @RequestMapping("delete")
    public String delete(int id){
        departmentService.delete(id);
        return "redirect:dept.view";
    }
}
