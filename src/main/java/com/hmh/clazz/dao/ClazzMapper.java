package com.hmh.clazz.dao;

import com.hmh.entity.Clazz;

import java.util.List;

public interface ClazzMapper {
    public List<Clazz> clazzList();

    public void add(Clazz clazz);

    public void delete(int id);
}
