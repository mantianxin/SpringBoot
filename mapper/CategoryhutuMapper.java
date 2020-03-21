package com.lzw.ssm.mapper;

import com.lzw.ssm.pojo.Category;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author lizwl
 * @interface CategoryhutuMapper
 * @create 2020-01-03 20:26
 * @desc
 **/
@Component
@Mapper
public interface CategoryhutuMapper {
    //添加分类信息
    boolean addCategory(Category category);
    //修改分类信息
    boolean updateCategory(Category category);
    //删除分类信息
   // boolean deleteCategory(String name);
    //查询分类信息
    List<Category> getCategorylist();
}
