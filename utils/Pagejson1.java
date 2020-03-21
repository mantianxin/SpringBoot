package com.lzw.ssm.utils;

/**
 * @author lizwl
 * @ClassName Pagejson1
 * @create 2020-01-27 13:47
 * @desc
 **/
public class Pagejson1 {
    int page;
    int size;

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public Pagejson1(int page, int size) {
        this.page = page;
        this.size = size;
    }

    public Pagejson1() {
    }

    @Override
    public String toString() {
        return "pagejson{" +
                "page=" + page +
                ", size=" + size +
                '}';
    }
}