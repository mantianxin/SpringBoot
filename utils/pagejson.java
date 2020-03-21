package com.lzw.ssm.utils;

/**
 * @author lizwl
 * @ClassName pagejson
 * @create 2020-01-27 13:46
 * @desc
 **/
public class pagejson {
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

    public pagejson(int page, int size) {
        this.page = page;
        this.size = size;
    }

    public pagejson() {
    }

    @Override
    public String toString() {
        return "pagejson{" +
                "page=" + page +
                ", size=" + size +
                '}';
    }
}