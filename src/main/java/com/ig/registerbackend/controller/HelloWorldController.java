package com.ig.registerbackend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/helloworld")
public class HelloWorldController {

    @Autowired
    private BCryptPasswordEncoder pe;



    @RequestMapping
    public String helloWorld() {

        System.out.println(pe.encode("123456"));

        return "Hello world!";
    }
}
