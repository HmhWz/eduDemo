package com.hmh.course_arrange.dao;

import com.hmh.entity.CourseArrange;

import java.util.List;

public interface CourseArrangeMapper {
    public List<CourseArrange> courseArrangedList();

    public void add(CourseArrange courseArrange);

    public void delete(int id);
}
