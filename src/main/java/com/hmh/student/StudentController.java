package com.hmh.student;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("student.do")
public class StudentController {

    @RequestMapping("student.view")
    public String studentView(Model model){
        model.addAttribute("studentList",null);
        return "admin/college/student";
    }
}
