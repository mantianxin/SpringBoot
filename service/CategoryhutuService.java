package com.lzw.ssm.service;


import com.lzw.ssm.mapper.CategoryhutuMapper;

import com.lzw.ssm.pojo.Category;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author lizwl
 * @ClassName ConfigService
 * @create 2020-01-01 18:47
 * @desc
 **/
@Service
public class CategoryhutuService {
    @Autowired
    CategoryhutuMapper categoryhutuMapper;

    //添加分类信息
    public boolean addCategory(Category category){
        return categoryhutuMapper.addCategory(category);
    }
    //查询配置信息
    public List<Category> getCategorylist(){
        return categoryhutuMapper.getCategorylist();
    }
    //修改配置信息
    public boolean updateCategory(Category category){
        return categoryhutuMapper.updateCategory(category);
    }
}