package com.hmh.system.service.impl;

import com.hmh.entity.Role;
import com.hmh.entity.User;
import com.hmh.entity.UserCustom;
import com.hmh.system.dao.RoleMapper;
import com.hmh.system.dao.UserMapper;
import com.hmh.system.service.RoleService;
import com.hmh.system.service.UserService;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.*;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    UserMapper userMapper;

    @Resource
    RoleMapper roleMapper;

    @Resource(name = "roleServiceImpl")
    RoleService roleService;

    @Override
    public User findByUsername(String username){
        return userMapper.findByUsername(username);
    }

    @Override
    public List<UserCustom> userList() {
        List<UserCustom> userCustomList = new ArrayList<>();
        List userList = userMapper.userList();

        Iterator iterator = userList.iterator();

        while(iterator.hasNext()){
            StringBuilder stringBuilder = new StringBuilder();
            User user = (User) iterator.next();
            List<Integer> roleIds = user.getRoleIds(); //得到roleId列表

            UserCustom userCustom = new UserCustom();
            BeanUtils.copyProperties(user, userCustom);


            if(!roleIds.isEmpty()){
                int i = 0;
                int size = roleIds.size();
                for (; i < size - 1; i++){
                    Role role = roleMapper.findById(roleIds.get(i));
                    stringBuilder.append(role.getDescription());
                    stringBuilder.append(",");
                }
                Role role = roleMapper.findById(roleIds.get(i));
                stringBuilder.append(role.getDescription());
                userCustom.setRoleIdsStr(stringBuilder.toString());
            }
            userCustomList.add(userCustom);
        }
        return userCustomList;
    }

    @Override
    public void update(User user){
        userMapper.update(user);
    }

    @Override
    public void add(User user){
        userMapper.add(user);
    }

    @Override
    public void delete(String username){
        userMapper.delete(username);
    }

    @Override
    public Set<String> findRoles(String username) {
        User user = findByUsername(username);
        if(user == null){
            return Collections.EMPTY_SET;
        }
        return roleService.findRoles(user.getRoleIds().toArray(new Integer[0]));
    }

    @Override
    public Set<String> findPermissions(String username) {
        return null;
    }
}
