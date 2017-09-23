package com.hmh.system.dao;

import com.hmh.entity.Role;

import java.util.List;

public interface RoleMapper {

    public void add(Role role);

    public void delete(int id);

    public void update(Role role);

    public Role findById(int id);

    public Role findByDescription(String description);

    public List<Role> findAll();
}
