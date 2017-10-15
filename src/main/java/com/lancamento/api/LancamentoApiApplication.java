package com.lancamento.api;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

import com.lancamento.api.config.property.LancamentoApiProperty;

@SpringBootApplication
@EnableConfigurationProperties(LancamentoApiProperty.class)
public class LancamentoApiApplication {

	public static void main(String[] args) {
		SpringApplication.run(LancamentoApiApplication.class, args);
	}
}
