package com.lzw.ssm.utils;

import org.mybatis.generator.api.MyBatisGenerator;
import org.mybatis.generator.config.Configuration;
import org.mybatis.generator.config.xml.ConfigurationParser;
import org.mybatis.generator.internal.DefaultShellCallback;


import java.io.File;
import java.util.ArrayList;
import java.util.List;
/**
 * @author lizwl
 * @ClassName GeneratorSqlmap
 * @create 2020-02-22 18:34
 * @desc
 **/
public class GeneratorSqlmap {

    public void generator() throws Exception {
        List<String> warnings = new ArrayList<String>();
        boolean overwrite = true;
        //指定 逆向工程配置文件  resources\mapper\generatorConfig.xml
        File configFile = new File("C:\\Users\\lizwl\\Desktop\\代码生成工具\\SpringBoot模板百度云代码\\SpringBoot基础\\代码\\springboot_mybatis\\src\\main\\resources\\mapper\\generatorConfig.xml");
        ConfigurationParser cp = new ConfigurationParser(warnings);
        Configuration config = cp.parseConfiguration(configFile);
        DefaultShellCallback callback = new DefaultShellCallback(overwrite);
        MyBatisGenerator myBatisGenerator = new MyBatisGenerator(config, callback, warnings);
        myBatisGenerator.generate(null);
    }

    public static void main(String[] args) throws Exception {
        try {
            GeneratorSqlmap generatorSqlmap = new GeneratorSqlmap();
            generatorSqlmap.generator();
        } catch (Exception e) {
            e.printStackTrace();//在命令行打印异常信息在程序中出错的位置及原因
        }
    }
}

