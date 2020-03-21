package com.lzw.ssm.utils;
  
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
    static String ip = "127.0.0.1";
    static int port = 3306;
    static String database = "hutubill";
    static String encoding = "UTF-8";
    static String loginName = "root";
    static String password = "5211314";
    static{
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
  
    public static Connection getConnection() throws SQLException {
        //jdbc:mysql://127.0.0.1:3306/hutubill?characterEncoding=UTF-8
        String url = "jdbc:mysql://127.0.0.1/hutubill?serverTimezone=UTC&useSSL=false";
        return DriverManager.getConnection(url, loginName, password);
    }
}