package com.lzw.ssm.pojo;

/**
 * @author lizwl
 * @ClassName Hero1
 * @create 2020-01-14 14:57
 * @desc
 **/
public class Hero1 {
    String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Hero1(String name) {
        this.name = name;
    }

    public Hero1() {
    }

    @Override
    public String toString() {
        return "Hero1{" +
                "name='" + name + '\'' +
                '}';
    }
}