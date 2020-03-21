package com.lzw.ssm.pojo;

import java.io.Serializable;

/**
 * @author lizwl
 * @ClassName SysUser
 * @create 2020-02-24 14:18
 * @desc
 **/
public class SysUser implements Serializable {
    static final long serialVersionUID = 1L;

    private Integer id;

    private String name;

    private String password;

    private String picname;
    // 省略getter/setter

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPicname() {
        return picname;
    }

    public void setPicname(String picname) {
        this.picname = picname;
    }
}
