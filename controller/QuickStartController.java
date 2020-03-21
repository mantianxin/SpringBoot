package com.lzw.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author lizwl
 * @ClassName QuickStartController
 * @create 2020-02-23 22:55
 * @desc
 **/
@RestController
public class QuickStartController {
    @RequestMapping("/quick")
    @ResponseBody
    public String quick(){
        return "springboot 访问成功!";
    }
}