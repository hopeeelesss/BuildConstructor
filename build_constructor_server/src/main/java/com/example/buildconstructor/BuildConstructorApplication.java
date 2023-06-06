package com.example.buildconstructor;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
		//(exclude = {DataSourceAutoConfiguration.class })
public class BuildConstructorApplication {

	public static void main(String[] args) {
		SpringApplication.run(BuildConstructorApplication.class, args);
	}

}
