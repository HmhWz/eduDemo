package com.hmh.clazz.service;

import com.hmh.entity.Clazz;

import java.util.List;

public interface ClazzService {
    public List<Clazz> clazzList();

    public void add(Clazz clazz);

    public void delete(int id);
}
