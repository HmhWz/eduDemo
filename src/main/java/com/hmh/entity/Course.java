package com.hmh.entity;

public class Course {
    private int id;
    private String courseName;
    private String specName;
    private String type;
    private float credits;

    public void setId(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setSpecName(String specName) {
        this.specName = specName;
    }

    public String getSpecName() {
        return specName;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getType() {
        return type;
    }

    public void setCredits(float credits) {
        this.credits = credits;
    }

    public float getCredits() {
        return credits;
    }
}
