package com.hmh.speciality.controller;

import com.hmh.department.service.DepartmentService;
import com.hmh.entity.Speciality;
import com.hmh.speciality.service.SpecialityService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("spec.do")
public class SpecialityController {

    @Resource(name = "specialityServiceImpl")
    SpecialityService specialityService;

    @Resource(name = "departmentServiceImpl")
    DepartmentService departmentService;

    @RequestMapping("spec.view")
    public String specView(Model model){
        model.addAttribute("specList", specialityService.specList());
        return "admin/college/speciality";
    }

    @RequestMapping("spec_add.view")
    public String addView(Model model){
        model.addAttribute("deptList", departmentService.departmentList());
        return "admin/college/speciality_add";
    }

    @RequestMapping(value = "add", method = RequestMethod.POST)
    public String add(Speciality speciality){
        specialityService.add(speciality);
        return "redirect:spec.view";
    }

    @RequestMapping("delete")
    public String delete(int id){
        specialityService.delete(id);
        return "redirect: spec.view";
    }

    //通过ajax返回department对应的所有专业
    @ResponseBody
    @RequestMapping(value = "specListByDeptName", method = RequestMethod.POST)
    public List<Speciality> findByDeptName(String deptName){
        return specialityService.findByDeptName(deptName);
    }
}
