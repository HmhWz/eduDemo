package com.hmh.entity;

import java.util.List;

public class Role {

    private int id;
    private String rolename;
    private String description;
    private Boolean available = false;

    public Role(){

    }

    public Role(String rolename, String description, Boolean available){
        this.rolename = rolename;
        this.description = description;
        this.available = available;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Boolean getAvailable() {
        return available;
    }

    public void setAvailable(Boolean available) {
        this.available = available;
    }
}
