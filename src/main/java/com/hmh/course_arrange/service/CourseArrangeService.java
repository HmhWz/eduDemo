package com.hmh.course_arrange.service;

import com.hmh.entity.CourseArrange;

import java.util.List;

public interface CourseArrangeService {

    public List<CourseArrange> courseArrangedList();

    public void add(CourseArrange courseArrange);

    public void delete(int id);
}
