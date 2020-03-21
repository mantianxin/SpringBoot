package com.lzw.ssm.pojo;

import com.lzw.ssm.utils.DateUtil;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.logging.SimpleFormatter;

/**
 * @author lizwl
 * @ClassName Record
 * @create 2020-01-01 17:04
 * @desc
 * 一本糊涂帐
 **/
public class Record {
    int id;
    int spend;
    int cid;
    String cidname;//分类名
    String comment;
    @DateTimeFormat(pattern = "yyyy-MM-dd" )
    Date date;
    String dateime;
    String month;

    public String getCidname() {
        switch (cid){
            case 1:
                cidname="出行";
                break;
            case 2:
                cidname="住宿";
                break;
            case 3:
                cidname="娱乐";
                break;
            default:
                cidname="此条记录出错";
                break;
        }
        return cidname;
    }

    public void setCidname(String cidname) {
        this.cidname = cidname;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public String getDateime() {
        if(date!=null){
            String dateime = DateUtil.date2String(date,"yyyy-MM-dd");
            return dateime;
        }
        return dateime;
    }

    public void setDateime(String dateime) {
        this.dateime = dateime;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getSpend() {
        return spend;
    }

    public void setSpend(int spend) {
        this.spend = spend;
    }

    public int getCid() {

        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }



    public Record() {

    }

    public Record(int id, int spend, int cid, String cidname, String comment, Date date, String dateime, String month) {
        this.id = id;
        this.spend = spend;
        this.cid = cid;
        this.cidname = cidname;
        this.comment = comment;
        this.date = date;
        this.dateime = dateime;
        this.month = month;
    }

    @Override
    public String toString() {
        return "Record{" +
                "id=" + id +
                ", spend=" + spend +
                ", cid=" + cid +
                ", cidname='" + cidname + '\'' +
                ", comment='" + comment + '\'' +
                ", date=" + date +
                ", dateime='" + dateime + '\'' +
                ", month='" + month + '\'' +
                '}';
    }
}