package com.hmh.student.service.impl;

import com.hmh.entity.Student;
import com.hmh.student.dao.StudentDao;
import com.hmh.student.service.StudentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class StudentServiceImpl implements StudentService{
    @Resource
    private StudentDao studentDao;

    public void add(Student student) {
        studentDao.add(student);
    }

    public void update(Student student) {
        studentDao.update(student);
    }

    public void delete(int id) {
        studentDao.delete(id);
    }

    public List<Student> studentList(){
        return studentDao.studentList();
    }
}
