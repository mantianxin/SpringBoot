package com.lzw.ssm.mapper;

import com.lzw.ssm.pojo.Config;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author lizwl
 * @interface ConfigMapper
 * @create 2020-01-02 22:29
 * @desc
 **/
@Component
@Mapper
public interface ConfigMapper {
    //增加订单信息
    boolean addConfig(Config config);
    //查询配置数据库信息（全查）
    List<Config> getConfigList();
}
