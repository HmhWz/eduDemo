package com.hmh.department.service;

import com.hmh.department.dao.DepartmentMapper;
import com.hmh.entity.Department;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DepartmentServiceImpl implements DepartmentService {

    @Resource
    DepartmentMapper departmentMapper;

    @Override
    public List<Department> departmentList() {
        return departmentMapper.departmentList();
    }

    @Override
    public void add(Department department) {
        departmentMapper.add(department);
    }

    @Override
    public void delete(int id) {
        departmentMapper.delete(id);
    }
}
