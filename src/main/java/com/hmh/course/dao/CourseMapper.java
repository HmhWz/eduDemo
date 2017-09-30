package com.hmh.course.dao;

import com.hmh.entity.Course;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CourseMapper {
    public List<Course> courseList();

    public void add(Course course);

    public void delete(int id);
}
