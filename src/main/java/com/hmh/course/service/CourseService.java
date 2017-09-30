package com.hmh.course.service;

import com.hmh.entity.Course;

import java.util.List;

public interface CourseService {
    public List<Course> courseList();

    public void add(Course course);

    public void delete(int id);
}
