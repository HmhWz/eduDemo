package com.hmh.course.controller;

import com.hmh.course.service.CourseService;
import com.hmh.entity.Course;
import com.hmh.speciality.service.SpecialityService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.DispatcherServlet;
import org.springframework.web.servlet.HandlerAdapter;
import org.springframework.web.servlet.HandlerExecutionChain;
import org.springframework.web.servlet.HandlerMapping;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.annotation.Resource;
import java.util.UUID;


@Controller
@RequestMapping("course.do")
public class CourseController {
    @Resource(name = "courseServiceImpl")
    CourseService courseService;

    @Resource(name = "specialityServiceImpl")
    SpecialityService specialityService;

    @RequestMapping("course.view")
    public String courseView(Model model) {
        model.addAttribute("courseList", courseService.courseList());
        return "admin/college/course";
    }

    @RequestMapping("course_add.view")
    public String addView(Model model){
        model.addAttribute("specList", specialityService.specList());
        return "admin/college/course_add";
    }

    @RequestMapping(value = "add", method = RequestMethod.POST)
    public String add(Course course) {
        courseService.add(course);
        return "redirect: course.view";
    }

    @RequestMapping("delete")
    public String delete(int id){
        courseService.delete(id);
        return "redirect: course.view";
    }
}
