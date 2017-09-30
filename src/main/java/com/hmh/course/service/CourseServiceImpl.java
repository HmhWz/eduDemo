package com.hmh.course.service;

import com.hmh.course.dao.CourseMapper;
import com.hmh.entity.Course;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CourseServiceImpl implements CourseService {

    @Resource
    CourseMapper courseMapper;

    @Override
    public List<Course> courseList() {
        return courseMapper.courseList();
    }

    @Override
    public void add(Course course) {
        courseMapper.add(course);
    }

    @Override
    public void delete(int id) {
        courseMapper.delete(id);
    }
}
