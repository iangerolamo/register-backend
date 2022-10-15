package com.ig.registerbackend;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.web.config.EnableSpringDataWebSupport;

@SpringBootApplication
@EnableSpringDataWebSupport
public class RegisterBackendApplication {

	public static void main(String[] args) {
		SpringApplication.run(RegisterBackendApplication.class, args);
	}

}
