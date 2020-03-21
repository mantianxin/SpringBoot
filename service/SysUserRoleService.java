package com.lzw.ssm.service;

import com.lzw.ssm.mapper.SysUserRoleMapper;
import com.lzw.ssm.pojo.SysUserRole;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author lizwl
 * @ClassName SysUserRoleService
 * @create 2020-02-24 14:24
 * @desc
 **/
@Service
public class SysUserRoleService {
    @Autowired
    private SysUserRoleMapper userRoleMapper;

    public List<SysUserRole> listByUserId(Integer userId) {
        return userRoleMapper.listByUserId(userId);
    }
}
