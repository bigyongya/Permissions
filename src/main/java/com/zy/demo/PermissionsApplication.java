package com.zy.demo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.zy.demo.mapper")
public class PermissionsApplication {
    public static void main(String[] args) {
        SpringApplication.run(PermissionsApplication.class,args);
    }
}
