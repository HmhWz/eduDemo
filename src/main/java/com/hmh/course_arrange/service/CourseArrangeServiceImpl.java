package com.hmh.course_arrange.service;

import com.hmh.course_arrange.dao.CourseArrangeMapper;
import com.hmh.entity.CourseArrange;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CourseArrangeServiceImpl implements CourseArrangeService {

    @Resource
    CourseArrangeMapper courseArrangeMapper;

    @Override
    public List<CourseArrange> courseArrangedList() {
        return courseArrangeMapper.courseArrangedList();
    }

    @Override
    public void add(CourseArrange courseArrange) {
        courseArrangeMapper.add(courseArrange);
    }

    @Override
    public void delete(int id) {
        courseArrangeMapper.delete(id);
    }
}
