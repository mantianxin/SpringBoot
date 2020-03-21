package com.lzw.ssm.mapper;

import com.lzw.ssm.pojo.SysUser;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Component;

/**
 * @author lizwl
 * @interface SysUserMapper
 * @create 2020-02-24 14:20
 * @desc
 **/
@Component
@Mapper
public interface SysUserMapper {
    @Select("SELECT * FROM sys_user WHERE id = #{id}")
    SysUser selectById(Integer id);

    @Select("SELECT * FROM sys_user WHERE name = #{name}")
    SysUser selectByName(String name);
    //查询图片名称根据用户名
    @Select("SELECT picname FROM sys_user WHERE name = #{name}")
    String selectByNameForPicture(String name);
    //更新用户头像图片名称
    @Update("UPDATE sys_user SET picname=#{filename} where name=#{name}")
    Boolean updatepicname(@Param("filename") String filename, @Param("name") String name);
}

