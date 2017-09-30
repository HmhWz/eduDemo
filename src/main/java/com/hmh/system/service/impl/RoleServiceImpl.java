package com.hmh.system.service.impl;

import com.hmh.entity.Role;
import com.hmh.system.dao.RoleMapper;
import com.hmh.system.service.RoleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class RoleServiceImpl implements RoleService {

    @Resource
    private RoleMapper roleMapper;

    @Override
    public void add(Role role) {
        roleMapper.add(role);
    }

    @Override
    public void delete(int id) {
        roleMapper.delete(id);
    }

    @Override
    public void update(Role role) {
        roleMapper.update(role);
    }

    @Override
    public Role findById(int id) {
        return roleMapper.findById(id);
    }

    @Override
    public List<Role> findAll() {
        return roleMapper.findAll();
    }

    @Override
    public Set<String> findRoles(Integer... roleIds) {
        Set<String> roles = new HashSet<String>();
        for(int roleId : roleIds){
            Role role = findById(roleId);
            if(role != null){
                roles.add(role.getRolename());
            }
        }
        return roles;
    }

    @Override
    public Set<String> findPermissions(Integer[] roleIds) {
        return null;
    }
}
