package com.lzw.ssm.controller;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.lzw.ssm.pojo.Username;
import com.lzw.ssm.service.SysUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *需要用到的页面：home.jsp
 * login.jsp
 **/
@RestController
public class LoginController {
    private Logger logger = LoggerFactory.getLogger(LoginController.class);
    @Autowired
    SysUserService sysUserService;
    @RequestMapping("/sucess")
    public ModelAndView showHome() {
        ModelAndView mav = new ModelAndView();
        String name = SecurityContextHolder.getContext().getAuthentication().getName();
        logger.info("当前登陆用户：" + name);
        mav.setViewName("hutuzhang");  //后台成功登录界面 hutuzhang 测试页面 home
        return mav;
    }
    //获取用户名  头像
    @RequestMapping(value="/sucess/username")
    @ResponseBody
    public String username(){
        String name = SecurityContextHolder.getContext().getAuthentication().getName();
        String picname = sysUserService.selectByNameForPicture(name);
        Username names = new Username(name,picname);
        String str = JSON.toJSONString(names);
        return str;
    }
    @RequestMapping("/login")
    public ModelAndView showLogin() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("index"); //后台初始页面 index  测试页面login
        return mav;
    }

    @RequestMapping("/login/error")
    public void loginError(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/html;charset=utf-8");
        AuthenticationException exception =
                (AuthenticationException) request.getSession().getAttribute("SPRING_SECURITY_LAST_EXCEPTION");
        try {
            response.getWriter().write(exception.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    @RequestMapping("/admin")
    @ResponseBody
    @PreAuthorize("hasPermission('/admin','r')")
    public String printAdminR() {
        return "如果你看见这句话，说明你访问/admin路径具有r权限";
    }

    @RequestMapping("/user/r")
    @ResponseBody
    @PreAuthorize("hasPermission('/user','r')")
    public String printAdminC() {
        return "如果你看见这句话，说明你访问/admin路径具有c权限";
    }
}