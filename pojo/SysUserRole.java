package com.lzw.ssm.pojo;

import java.io.Serializable;

/**
 * @author lizwl
 * @ClassName SysUserRole
 * @create 2020-02-24 14:19
 * @desc
 **/
public class SysUserRole implements Serializable {
    static final long serialVersionUID = 1L;

    private Integer userId;

    private Integer roleId;

    // 省略getter/setter

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }
}
