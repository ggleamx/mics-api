package com.mics.auth;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class Controller {

    
    @GetMapping("/auth")
    public String hello() {
        return "Hello momas!";
    }

}


