package com.lzw.ssm.pojo;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * @author lizwl
 * @ClassName Config
 * @create 2020-01-01 17:00
 * @desc
 * 一本糊涂帐所用类
 **/


public class Config {

    int id;
    String key_;
    String value;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getKey_() {
        return key_;
    }

    public void setKey_(String key_) {
        this.key_ = key_;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public Config() {
    }

    @Override
    public String toString() {
        return "Config{" +
                "id=" + id +
                ", key_='" + key_ + '\'' +
                ", value='" + value + '\'' +
                '}';
    }
}