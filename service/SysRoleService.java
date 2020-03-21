package com.lzw.ssm.service;

import com.lzw.ssm.mapper.SysRoleMapper;
import com.lzw.ssm.pojo.SysRole;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author lizwl
 * @ClassName SysRoleService
 * @create 2020-02-24 14:23
 * @desc
 **/
@Service
public class SysRoleService {
    @Autowired
    private SysRoleMapper roleMapper;

    public SysRole selectById(Integer id) {
        return roleMapper.selectById(id);
    }

    public SysRole selectByName(String name) {
        return roleMapper.selectByName(name);
    }
}
