package com.lzw.ssm.service;

import com.lzw.ssm.mapper.LoginUserMapper;
import com.lzw.ssm.pojo.LoginUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author lizwl
 * @ClassName LoginUserService
 * @create 2020-01-08 11:17
 * @desc
 **/
@Service
public class LoginUserService {
    @Autowired
    LoginUserMapper loginUserMapper;
    //根据用户名核验用户是否存在
    public List<LoginUser> testuser(String name){
        return loginUserMapper.testuser(name);
    }
    //根据表单提交，查询用户s
    public  LoginUser loginuser(String Uname,String Upassword){
        return  loginUserMapper.login(Uname, Upassword);
    }
    //注册用户
    public Boolean regist(LoginUser loginUser){
        return  loginUserMapper.regist(loginUser);
    }
    //查询用户信息
    public  List<LoginUser> getUserLists(){
        List<LoginUser> lists = loginUserMapper.getUserList();
        return lists;
    }
}