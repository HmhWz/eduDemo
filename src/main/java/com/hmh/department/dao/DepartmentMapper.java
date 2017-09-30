package com.hmh.department.dao;

import com.hmh.entity.Department;

import java.util.List;

public interface DepartmentMapper {

    public List<Department> departmentList();

    public void add(Department department);

    public void delete(int id);
}
