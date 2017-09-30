package com.hmh.speciality.dao;

import com.hmh.entity.Speciality;

import java.util.List;

public interface SpecialityMapper {
    public List<Speciality> specList();

    public void add(Speciality speciality);

    public void delete(int id);

    public List<Speciality> findByDeptName(String deptName);
}
