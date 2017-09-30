package com.hmh.speciality.service;

import com.hmh.entity.Speciality;
import com.hmh.speciality.dao.SpecialityMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SpecialityServiceImpl implements SpecialityService {
    @Resource
    SpecialityMapper specialityMapper;

    @Override
    public List<Speciality> specList() {
        return specialityMapper.specList();
    }

    @Override
    public List<Speciality> findByDeptName(String deptName) {
        return specialityMapper.findByDeptName(deptName);
    }

    @Override
    public void add(Speciality speciality) {
        specialityMapper.add(speciality);
    }

    @Override
    public void delete(int id) {
        specialityMapper.delete(id);
    }
}
