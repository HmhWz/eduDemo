package com.hmh.system.service;

import com.hmh.entity.User;

import java.util.List;
import java.util.Set;

public interface UserService {
    public User findById(int id);

    public Set<String> findRoles(String username);

    public Set<String> findPermissions(String username);
}
