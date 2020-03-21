package com.lzw.ssm.mapper;

import com.lzw.ssm.pojo.SysPermission;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author lizwl
 * @interface SysPermissionMapper
 * @create 2020-03-07 16:12
 * @desc
 **/
@Mapper
public interface SysPermissionMapper {
    @Select("SELECT * FROM sys_permission WHERE role_id=#{roleId}")
    List<SysPermission> listByRoleId(Integer roleId);
}

