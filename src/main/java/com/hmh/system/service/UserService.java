package com.hmh.system.service;

import com.hmh.entity.User;
import com.hmh.entity.UserCustom;

import java.util.List;
import java.util.Set;

public interface UserService {

    public User findByUsername(String username);

    public List<UserCustom> userList();

    public void add(User user);

    public void update(User user);

    public void delete(String username);

    public Set<String> findRoles(String username);

    public Set<String> findPermissions(String username);
}
