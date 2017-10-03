package com.hmh.student.controller;

import com.hmh.department.service.DepartmentService;
import com.hmh.entity.Student;
import com.hmh.student.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

@Controller
@RequestMapping("student.do")
public class AdminStudentController {

    @Resource(name = "studentServiceImpl")
    StudentService studentService;
    @Resource(name = "departmentServiceImpl")
    DepartmentService departmentService;

    @RequestMapping("student.view")
    public String studentView(Model model){
        model.addAttribute("studentList",studentService.studentList());
        return "admin/college/student";
    }

    @RequestMapping(value = "student_add.view", method = RequestMethod.GET)
    public String addView(Model model) {
        model.addAttribute("deptList", departmentService.departmentList());
        return "admin/college/student_add";
    }

    @RequestMapping(value = "add", method = RequestMethod.POST)
    public String add(ModelMap modelMap, Student student) {
        studentService.add(student);
        return "redirect:/student.do/student.view";
    }

    @RequestMapping("student_update.view")
    public String updateView(Model model){
        model.addAttribute("deptList", departmentService.departmentList());
        return "admin/college/student_update";
    }

    @RequestMapping(value = "update", method = RequestMethod.POST)
    public String update(ModelMap model, Student student){
        model.addAttribute("studentId", student.getStudentId());
        studentService.update(student);
        return "redirect:/student.do/student.view";
    }

    @RequestMapping("delete")
    public String delete(Model model, int id){
        studentService.delete(id);
        return "redirect:/student.do/student.view";
    }

}
