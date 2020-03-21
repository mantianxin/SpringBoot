package com.lzw.ssm.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

/**
 * @author lizwl
 * @ClassName test
 * @create 2020-02-28 21:48
 * @desc
 **/
public class test {
    public static void main(String[] args) throws Exception{
      String s= "aabbccddggg";
      test t = new test();
      int ss= t.longestPalindrome(s);
      System.out.println(ss);
    }
    public int longestPalindrome(String s) {
        int[] count = new int[128];
        for (char c: s.toCharArray())
            count[c]++;
        int ans = 0;
        for (int v: count) {

            ans += v / 2 * 2;
            if (v % 2 == 1 && ans % 2 == 0)
                ans++;
        }
        return ans;
    }
}