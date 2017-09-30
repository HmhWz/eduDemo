package com.hmh.entity;

import java.util.List;

public class UserCustom extends User {
    String roleIdsStr;

    @Override
    public String getRoleIdsStr() {
        return roleIdsStr;
    }

    @Override
    public void setRoleIdsStr(String roleIdsStr) {
        this.roleIdsStr = roleIdsStr;
    }
}
