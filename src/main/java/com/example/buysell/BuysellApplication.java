package com.example.buysell;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages={"com.example.buysell.repositories", "com.example.buysell.services"
		,"com.example.buysell.models", "com.example.buysell.controllers", "com.example.buysell.configurations"})
public class BuysellApplication {

	public static void main(String[] args) {
		SpringApplication.run(BuysellApplication.class, args);
	}

}
