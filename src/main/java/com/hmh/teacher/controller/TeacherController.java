package com.hmh.teacher.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("teacher")
public class TeacherController {

    @RequestMapping("main")
    public String main(){
        return "teacher/main";
    }

    @RequestMapping("mycourse")
    public String mycourse() {
        return "teacher/mycourse";
    }

    @RequestMapping("newcourse")
    public String newCourse() {
        return "teacher/new_course";
    }
}
