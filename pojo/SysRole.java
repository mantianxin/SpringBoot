package com.lzw.ssm.pojo;

import java.io.Serializable;

/**
 * @author lizwl
 * @ClassName SysRole
 * @create 2020-02-24 14:19
 * @desc
 **/
public class SysRole implements Serializable {
    static final long serialVersionUID = 1L;

    private Integer id;

    private String name;

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
}
