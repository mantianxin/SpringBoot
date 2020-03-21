package com.lzw.ssm.service;

/**
 * @author lizwl
 * @ClassName SysPermissionService
 * @create 2020-03-07 16:14
 * @desc
 **/

import com.lzw.ssm.mapper.SysPermissionMapper;
import com.lzw.ssm.pojo.SysPermission;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SysPermissionService {
    @Autowired
    private SysPermissionMapper permissionMapper;

    /**
     * 获取指定角色所有权限
     */
    public List<SysPermission> listByRoleId(Integer roleId) {
        return permissionMapper.listByRoleId(roleId);
    }
}
