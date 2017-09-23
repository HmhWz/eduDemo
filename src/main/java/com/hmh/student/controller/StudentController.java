package com.hmh.student.controller;

import com.hmh.student.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("student")
public class StudentController {

    @Resource(name = "studentServiceImpl")
    StudentService studentService;

    @RequestMapping(value = "main")
    public String mainInfo(Model model, int studentId) {
        model.addAttribute("student", studentService.findByStudentId(studentId));
        return "student/main";
    }

    @RequestMapping(value = "mycourse")
    public String myCourse() {
        return "student/mycourse";
    }

    @RequestMapping(value = "elect")
    public String electCourse() {
        return "student/elect";
    }
}
