package com.hmh.system.dao;

import com.hmh.entity.User;

import java.util.List;

public interface UserMapper {

    public User findByUsername(String username);

    public void add(User user);

    public void delete(String username);

    public void update(User user);

}
