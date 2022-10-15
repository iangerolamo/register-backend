package com.ig.registerbackend.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/helloworld")
public class HelloWorldController {

    @RequestMapping
    public String helloWorld() {
        return "Hello world!";
    }
}
