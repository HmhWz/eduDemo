package com.hmh.entity;

import java.util.ArrayList;
import java.util.List;

public class User {
    private int id;
    private String username;
    private String password;
    private String salt;
    private List<Integer> roleIds; //拥有的角色列表
    private Boolean locked = false;

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUsername() {
        return username;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId() {
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

    public void setRoleIds(List<Integer> roleIds) {
        this.roleIds = roleIds;
    }

    public List<Integer> getRoleIds() {
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
        if(roleIds.isEmpty()){
            return "";
        }
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        for(; i < roleIds.size() - 1; i++){
            stringBuilder.append(roleIds.get(i));
            stringBuilder.append(",");
        }
        stringBuilder.append(roleIds.get(i));
        return stringBuilder.toString();
    }

    public void setRoleIdsStr(String roleIdsStr){
        if(roleIdsStr == null || roleIdsStr == ""){
            return;
        }
        roleIds = new ArrayList<>();
        String[] strArr = roleIdsStr.split(",");
        for(String str : strArr){
            roleIds.add(Integer.valueOf(str));
        }
    }
}
