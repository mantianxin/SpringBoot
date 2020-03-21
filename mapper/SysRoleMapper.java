package com.lzw.ssm.mapper;

import com.lzw.ssm.pojo.SysRole;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

/**
 * @author lizwl
 * @interface SysRoleMapper
 * @create 2020-02-24 14:21
 * @desc
 **/
@Component
@Mapper
public interface SysRoleMapper {
    @Select("SELECT * FROM sys_role WHERE id = #{id}")
    SysRole selectById(Integer id);
    @Select("SELECT * FROM sys_role WHERE name = #{name}")
    SysRole selectByName(String name);
}

