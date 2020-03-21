package com.lzw.ssm.pojo;

import java.util.Date;

/**
 * @author lizwl
 * @ClassName Hero
 * @create 2019-12-15 21:07
 * @desc
 **/
public class Hero {
    int id;
    String name;
    Date dt;

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public Date getDt() {
        return dt;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setDt(Date dt) {
        this.dt = dt;
    }

    public Hero(int id, String name, Date dt) {
        this.id = id;
        this.name = name;
        this.dt = dt;
    }
}