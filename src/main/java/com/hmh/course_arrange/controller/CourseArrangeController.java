package com.hmh.course_arrange.controller;

import com.hmh.course.service.CourseService;
import com.hmh.course_arrange.service.CourseArrangeService;
import com.hmh.entity.CourseArrange;
import com.hmh.teacher.service.TeacherService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

@Controller
@RequestMapping("course_arrange.do")
public class CourseArrangeController {
    @Resource(name = "courseArrangeServiceImpl")
    CourseArrangeService courseArrangeService;

    @Resource(name = "courseServiceImpl")
    CourseService courseService;

    @Resource(name = "teacherServiceImpl")
    TeacherService teacherService;

    @RequestMapping("course_arrange.view")
    public String arrangedView(Model model){
        model.addAttribute("courseArrangedList", courseArrangeService.courseArrangedList());
        return "admin/college/course_arrange";
    }

    @RequestMapping("course_arrange_add.view")
    public String addView(Model model){
        model.addAttribute("courseList", courseService.courseList());
        model.addAttribute("teacherList", teacherService.teacherList());
        return "admin/college/course_arrange_add";
    }

    @RequestMapping(value = "add", method = RequestMethod.POST)
    public String add(CourseArrange courseArrange) {
        courseArrangeService.add(courseArrange);
        return "redirect: course_arrange.view";
    }

    @RequestMapping("delete")
    public String delete(int id){
        courseArrangeService.delete(id);
        return "redirect: course_arrange.view";
    }
}
