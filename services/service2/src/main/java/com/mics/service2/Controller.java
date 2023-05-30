package com.mics.service2;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {

    @GetMapping("/hello")
    public String hello() {
        System.out.println("Hello from Service 2!");
        return "Hello from Service 2!";
    }

}
