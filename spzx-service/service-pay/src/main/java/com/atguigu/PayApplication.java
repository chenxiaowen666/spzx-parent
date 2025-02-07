package com.atguigu;

import com.atguigu.spzx.common.anno.EnableUserWebMvcConfiguration;
import com.atguigu.spzx.pay.properties.AlipayProperties;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.cloud.openfeign.EnableFeignClients;

@EnableConfigurationProperties(value = { AlipayProperties.class })
@EnableFeignClients(basePackages = {
        "com.atguigu.spzx"
})
@SpringBootApplication
@EnableUserWebMvcConfiguration
public class PayApplication {

    public static void main(String[] args) {
        SpringApplication.run(PayApplication.class , args) ;
    }

}