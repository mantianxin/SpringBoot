package com.lzw.ssm.service;


import com.lzw.ssm.mapper.ConfigMapper;
import com.lzw.ssm.pojo.Config;
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
public class ConfigService {
    @Autowired
    public ConfigMapper configMapoer;

    //添加配置信息
    public Boolean addConfig(Config config) {
        return configMapoer.addConfig(config);
    }

    //查询全部配置信息
    public List<Config> getConfigLists() {
        List<Config> lists = configMapoer.getConfigList();
        return lists;
    }
}