package com.hmh.student.controller;

import com.hmh.entity.Student;
import com.hmh.student.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("student.do")
public class StudentController {

    @Resource(name = "studentServiceImpl")
    StudentService studentService;

    @RequestMapping("student.view")
    public String studentView(Model model){
        model.addAttribute("studentList",null);
        return "admin/college/student";
    }

    @RequestMapping(value = "student_add.view", method = RequestMethod.GET)
    public String addView() {
        return "admin/college/student_add";
    }

    @RequestMapping(value = "add", method = RequestMethod.POST)
    public String add(ModelMap modelMap, Student student) {
        studentService.add(student);
        return "redirect:/student.do/student.view";
    }

}
