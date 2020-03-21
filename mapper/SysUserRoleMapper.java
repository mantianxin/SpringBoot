package com.lzw.ssm.mapper;

import com.lzw.ssm.pojo.SysUserRole;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author lizwl
 * @interface SysUserRoleMapper
 * @create 2020-02-24 14:22
 * @desc
 **/
@Component
@Mapper
public interface SysUserRoleMapper {
    @Select("SELECT * FROM sys_user_role WHERE user_id = #{userId}")
    List<SysUserRole> listByUserId(Integer userId);
}

