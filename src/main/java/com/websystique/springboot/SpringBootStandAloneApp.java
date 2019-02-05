package com.websystique.springboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication(scanBasePackages= {"com"})
@EntityScan(basePackages= {"com.avon.finance.chip.unefon.model"})
@EnableJpaRepositories(basePackages= {"com.avon.finance.chip.unefon.dao"})
@ComponentScan("com.avon.finance.chip.unefon")
public class SpringBootStandAloneApp {
	
	public static void main(String[] args) {
		SpringApplication.run(SpringBootStandAloneApp.class,  args);
	}
}
