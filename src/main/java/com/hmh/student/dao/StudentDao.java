package com.hmh.student.dao;

import com.hmh.entity.Student;

import java.util.List;

public interface StudentDao {

    public void add(Student student);

    public void update(Student student);

    public void delete(int id);

    public Student findByStudentId(int studentId);

    public List<Student> studentList();
}
