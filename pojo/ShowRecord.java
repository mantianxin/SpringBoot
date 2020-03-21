package com.lzw.ssm.pojo;

/**
 * @author lizwl
 * @ClassName ShowRecord
 * @create 2020-01-04 23:27
 * @desc
 **/
public class ShowRecord {
    //月份
    String month;
    //年份
    String year;
    //每月总消费
    int SpendMonth;
    //周消费
    int SpendWeek;
    //年消费
    int SpendYear;
    //当日消费日期
    int SpendDay;
    //当前日期
    String  day;
    //当前是第几周
    int countweek;
    //本周开始日期
    String startdate;
    //本周结束日期
    String enddate;
    //本月开始时间
    String startmonth;
    //本月结束时间
    String endMonth;
    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public int getSpendMonth() {
        return SpendMonth;
    }

    public void setSpendMonth(int spendMonth) {
        SpendMonth = spendMonth;
    }

    public String getDay() {
        return day;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public int getCountweek() {
        return countweek;
    }

    public void setCountweek(int countweek) {
        this.countweek = countweek;
    }

    public String getStartdate() {
        return startdate;
    }

    public void setStartdate(String startdate) {
        this.startdate = startdate;
    }

    public String getEnddate() {
        return enddate;
    }

    public void setEnddate(String enddate) {
        this.enddate = enddate;
    }

    public int getSpendDay() {
        return SpendDay;
    }

    public void setSpendDay(int spendDay) {
        SpendDay = spendDay;
    }

    public String getStartmonth() {
        return startmonth;
    }

    public void setStartmonth(String startmonth) {
        this.startmonth = startmonth;
    }

    public String getEndMonth() {
        return endMonth;
    }

    public void setEndMonth(String endMonth) {
        this.endMonth = endMonth;
    }

    public int getSpendWeek() {
        return SpendWeek;
    }

    public void setSpendWeek(int spendWeek) {
        SpendWeek = spendWeek;
    }

    public int getSpendYear() {
        return SpendYear;
    }

    public void setSpendYear(int spendYear) {
        SpendYear = spendYear;
    }

    public ShowRecord() {
    }

    public ShowRecord(String month) {
        this.month = month;
    }

    public ShowRecord(String day, String startdate, String enddate,String startmonth, String endMonth) {
        this.day = day;
        this.startdate = startdate;
        this.enddate = enddate;
        this.startmonth = startmonth;
        this.endMonth = endMonth;

    }

    public ShowRecord(String month, String year, int spendMonth, int spendDay, String day, int countweek, String startdate, String enddate, String startmonth, String endMonth) {
        this.month = month;
        this.year = year;
        SpendMonth = spendMonth;
        SpendDay = spendDay;
        this.day = day;
        this.countweek = countweek;
        this.startdate = startdate;
        this.enddate = enddate;
        this.startmonth = startmonth;
        this.endMonth = endMonth;
    }

    @Override
    public String toString() {
        return "ShowRecord{" +
                "month='" + month + '\'' +
                ", year='" + year + '\'' +
                ", SpendMonth=" + SpendMonth +
                ", SpendDay=" + SpendDay +
                ", day='" + day + '\'' +
                ", countweek=" + countweek +
                ", startdate='" + startdate + '\'' +
                ", enddate='" + enddate + '\'' +
                ", startmonth='" + startmonth + '\'' +
                ", endMonth='" + endMonth + '\'' +
                '}';
    }
}