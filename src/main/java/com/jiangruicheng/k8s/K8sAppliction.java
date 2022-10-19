package com.jiangruicheng.k8s;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class K8sAppliction {
    @Value("${msg}")
    private String msg;

    public static void main(String[] args) {
        SpringApplication.run(K8sAppliction.class, args);
    }

    @GetMapping("/")
    public String get() {
        return msg;
    }
}
