package com.lzw.ssm;

import com.lzw.ssm.utils.VerifyServlet;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;

/**
 * springboot启动类
 **/
@SpringBootApplication
@ComponentScan(basePackages = {"com.lzw.ssm.controller"})
@ComponentScan(basePackages = {"com.lzw.ssm.mapper"})
@ComponentScan(basePackages = {"com.lzw.ssm.pojo"})
@ComponentScan(basePackages = {"com.lzw.ssm.service"})
@ComponentScan(basePackages = {"com.lzw.ssm.utils"})

public class StaratApplication extends SpringBootServletInitializer {
    public static void main(String[] args) {
        SpringApplication.run(StaratApplication.class, args);
    }
    /**
     * 注入验证码servlet
     */
    @Bean
    public ServletRegistrationBean indexServletRegistration() {
        ServletRegistrationBean registration = new ServletRegistrationBean(new VerifyServlet());
        registration.addUrlMappings("/getVerifyCode");
        return registration;
    }
    @Override
    protected SpringApplicationBuilder configure(
            SpringApplicationBuilder builder) {
        return builder.sources(this.getClass());
    }
}