package com.hmh.department.service;

import com.hmh.entity.Department;

import java.util.List;

public interface DepartmentService {

    public List<Department> departmentList();

    public void add(Department department);

    public void delete(int id);
}
