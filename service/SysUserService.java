package com.lzw.ssm.service;

import com.lzw.ssm.mapper.SysUserMapper;
import com.lzw.ssm.pojo.SysUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author lizwl
 * @ClassName SysUserService
 * @create 2020-02-24 14:22
 * @desc
 **/
@Service
public class SysUserService {
    @Autowired
    private SysUserMapper userMapper;

    public SysUser selectById(Integer id) {
        return userMapper.selectById(id);
    }

    public SysUser selectByName(String name) {
        return userMapper.selectByName(name);
    }

    public String selectByNameForPicture(String name){
        return userMapper.selectByNameForPicture(name);
    }

    public Boolean updatepicname(String filename,String name){
        return userMapper.updatepicname(filename, name);
    }
}
