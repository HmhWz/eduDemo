package com.hmh.system.service;

import com.hmh.entity.Role;

import java.util.List;
import java.util.Set;

public interface RoleService {

    public void add(Role role);

    public void delete(int id);

    public void update(Role role);

    public Role findById(int id);

    public List<Role> findAll();

    Set<String> findRoles(Integer... roleIds);

    Set<String> findPermissions(Integer[] roleIds);
}
