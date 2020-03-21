package com.lzw.ssm.pojo;

import com.lzw.ssm.utils.DateUtil;

import java.util.Date;

public class Recordto {
    private Integer id;

    private Integer spend;

    private Date date;
    private String datetime;

    private String type;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSpend() {
        return spend;
    }

    public void setSpend(Integer spend) {
        this.spend = spend;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getDatetime() {
        if(date!=null){
            String dateime = DateUtil.date2String(date,"yyyy-MM-dd");
            return dateime;
        }
        return datetime;
    }

    public void setDatetime(String datetime) {
        this.datetime = datetime;
    }

    public Recordto() {
    }

    public Recordto(Integer id, Integer spend, Date date, String type) {
        this.id = id;
        this.spend = spend;
        this.date = date;
        this.type = type;
    }

    @Override
    public String toString() {
        return "Recordto{" +
                "id=" + id +
                ", spend=" + spend +
                ", date=" + date +
                ", type='" + type + '\'' +
                '}';
    }
}