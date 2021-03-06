package com.lzw.ssm.mapper;

import com.lzw.ssm.pojo.Commodity;

import com.lzw.ssm.pojo.Image;
import com.lzw.ssm.pojo.LoginUser;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author lizwl
 * @interface CommodityMapper
 * @create 2019-09-03 22:49
 * @desc
 **/
@Component
@Mapper
public interface CommodityMapper {
    //查询订单信息（全查）
    List<Commodity> getCommodityList();
    //增加订单信息
    boolean addCommodity(Commodity commodity);
    //删除订单信息
    boolean deleteCommodity(int id);
    //修改订单
    boolean updateCommodity(Commodity commodity);
    //根据id查询订单信息
    List<Commodity> getonecommodityList(int id);
    //登录用户
    LoginUser login(@Param("Uname") String Uname, @Param("Upassword") String Upassword);
    //注册用户
    boolean regist(LoginUser loginUser);
    //查询用户信息
    List<LoginUser> getUserList();
    //上传图片
    void insertImage(Image testPo);
    //获取图片
    Image selectImageById(Integer id);
}
