package com.hmh.clazz.service;

import com.hmh.clazz.dao.ClazzMapper;
import com.hmh.entity.Clazz;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ClazzServiceImpl implements ClazzService {

    @Resource
    ClazzMapper clazzMapper;

    @Override
    public List<Clazz> clazzList() {
        return clazzMapper.clazzList();
    }

    @Override
    public void add(Clazz clazz) {
        clazzMapper.add(clazz);
    }

    @Override
    public void delete(int id) {
        clazzMapper.delete(id);
    }
}
