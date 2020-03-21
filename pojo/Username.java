package com.lzw.ssm.pojo;

/**
 * @author lizwl
 * @ClassName Username
 * @create 2020-03-08 21:48
 * @desc
 **/
public class Username {
    String name;
    String picname;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }



    public String getPicname() {
        return picname;
    }

    public void setPicname(String picname) {
        this.picname = picname;
    }

    public Username() {

    }

    public Username(String name, String picname) {
        this.name = name;
        this.picname = picname;
    }
}