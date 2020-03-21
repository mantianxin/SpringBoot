package com.lzw.ssm.pojo;

/**
 * @author lizwl
 * @ClassName Category
 * @create 2020-01-01 17:02
 * @desc
 * 一本糊涂账
 * 业务类
 **/
public class Category {
    int id;
    String name;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Category(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public Category() {
    }

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}