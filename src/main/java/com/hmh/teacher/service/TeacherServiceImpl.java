package com.hmh.teacher.service;

import com.hmh.entity.Teacher;
import com.hmh.teacher.dao.TeacherMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class TeacherServiceImpl implements TeacherService{

    @Resource
    TeacherMapper teacherMapper;

    @Override
    public List<Teacher> teacherList() {
        return teacherMapper.teacherList();
    }
}
