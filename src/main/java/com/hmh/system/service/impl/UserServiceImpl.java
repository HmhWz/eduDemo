package com.hmh.system.service.impl;

import com.hmh.entity.User;
import com.hmh.system.dao.UserMapper;
import com.hmh.system.service.UserService;

import javax.annotation.Resource;
import java.util.Set;

public class UserServiceImpl implements UserService {

    @Resource
    UserMapper userMapper;

    public User findById(int id) {
        return null;
    }

    public User findByUsername(String username){
        return userMapper.findByUsername(username);
    }

    public void update(User user){
        userMapper.update(user);
    }

    public void add(User user){
        userMapper.add(user);
    }

    public void delete(String username){
        userMapper.delete(username);
    }

    public Set<String> findRoles(String username) {
        User user = findByUsername(username);
    }

    public Set<String> findPermissions(String username) {
        return null;
    }
}
