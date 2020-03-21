package com.lzw.ssm.controller;

/**
 * @author lizwl
 * @ClassName PageController
 * @create 2020-01-07 23:10
 * @desc
 **/

import com.github.pagehelper.PageHelper;

import com.lzw.ssm.pojo.Record;

import com.lzw.ssm.pojo.Recordto;
import com.lzw.ssm.service.RecordtohutuService;
import com.lzw.ssm.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**进行分页操作处理*/
@RestController
@RequestMapping("")
public class PageController {

    @Autowired
    RecordtohutuService recordtohutuService;
    @RequestMapping(value="/RecordList")
    public ModelAndView Customerlist(Page page){
        ModelAndView mav = new ModelAndView();
        PageHelper.offsetPage(page.getStart(),5);
        List<Recordto> configlist = recordtohutuService.getRecordlist();
        mav.addObject("Record",configlist);
        mav.setViewName("Pagehelper");
        return mav;
    }
}