package com.hmh.entity;

import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;

import java.util.ArrayList;
import java.util.List;

public class User {
    String id;
    String username;
    String password;
    String salt;
    private List<Long> roleIds; //拥有的角色列表
    private Boolean locked = false;

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUsername() {
        return username;
    }

    public void setUserId(String userId) {
        this.id = userId;
    }

    public String getUserId() {
        return id;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword() {
        return password;
    }

    public void setLocked(Boolean locked) {
        this.locked = locked;
    }

    public Boolean getLocked() {
        return locked;
    }

    public void setRoleIds(List<Long> roleIds) {
        this.roleIds = roleIds;
    }

    public List<Long> getRoleIds() {
        return roleIds;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    public String getSalt() {
        return salt;
    }

    public String getCredentialsSalt() {
        return username + salt;
    }

//    得到角色列表的字符串
    public String getRoleIdsStr() {
        if (CollectionUtils.isEmpty(roleIds)){
            return "";
        }
        StringBuilder s = new StringBuilder();
        int i = 0;
        for(; i < roleIds.size() -1; i++){
            s.append(roleIds.get(i));
            s.append(",");
        }
        s.append(roleIds.get(i));
        return s.toString();
    }

    public void setRoleIdsStr(String roleIdsStr){
        if(StringUtils.isEmpty(roleIdsStr)){
            return;
        }
        roleIds = new ArrayList<Long>();
        String[] strArr = roleIdsStr.split(",");
        for(String str : strArr){
            roleIds.add(Long.valueOf(str));
        }
    }
}
