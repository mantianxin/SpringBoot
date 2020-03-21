package com.lzw.ssm.mapper;

import com.lzw.ssm.pojo.LoginUser;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author lizwl
 * @interface LoginUserMapper
 * @create 2020-01-08 11:12
 * @desc
 **/
@Component
@Mapper
public interface LoginUserMapper {
    //根据用户名核验用户是否存在
    List<LoginUser> testuser(String name);
    LoginUser login(@Param("Uname") String Uname, @Param("Upassword") String Upassword);
    //用户登录
    List<LoginUser> loginuser();
    //注册用户
    boolean regist(LoginUser loginUser);
    //查询用户信息
    List<LoginUser> getUserList();
}
