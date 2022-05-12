package com.StaffSystem;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;


//扫包范围，同级目录下的所有子包
@ServletComponentScan
@SpringBootApplication(scanBasePackages = {"com.StaffSystem"})
@MapperScan("com.StaffSystem.dao")
public class DemoApplication {
    public static void main(String[] args) {
        SpringApplication.run(DemoApplication.class, args);
    }

}
