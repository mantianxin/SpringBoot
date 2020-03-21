package com.lzw.ssm.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;



/**
 * @author lizwl
 * @ClassName DateUtil
 * @create 2020-01-12 14:24
 * @desc
 **/
public class DateUtil {
    private static SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
//    private static SimpleDateFormat dateFormat1 = new SimpleDateFormat("M月d日");
    //日期转换为字符串
    public static String date2String(Date date, String patt){
        SimpleDateFormat sdf = new SimpleDateFormat(patt);
        String format = sdf.format(date);
        return format;
    }
    //字符串转换为日期
    public static Date string2Date(String str,String patt)throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat(patt);
        Date parse = sdf.parse(str);
        return parse;
    }
    // 获得当前月--开始日期
    public static String getMinMonthDate(String date) {
        //获取实例
        Calendar calendar = Calendar.getInstance();
        try {
            //设置时间
            //System.out.println("getMinMonthDate的参数dateFormat.parse(date)的值为"+dateFormat.parse(date));
            //dateFormat.parse(date)将字符串转换为时间类型  主要是parse函数的作用
            calendar.setTime(dateFormat.parse(date));
            //设置每月的最大天数
            calendar.set(Calendar.DAY_OF_MONTH, calendar.getActualMinimum(Calendar.DAY_OF_MONTH));
            return dateFormat.format(calendar.getTime());
        } catch (java.text.ParseException e) {
            e.printStackTrace();
        }
        return null;
    }
    // 获得当前月--结束日期
    public static String getMaxMonthDate(String date){
        Calendar calendar = Calendar.getInstance();
        try {
            calendar.setTime(dateFormat.parse(date));
            calendar.set(Calendar.DAY_OF_MONTH, calendar.getActualMaximum(Calendar.DAY_OF_MONTH));
            return dateFormat.format(calendar.getTime());
        }  catch (java.text.ParseException e) {
            e.printStackTrace();
        }
        return null;
    }

}