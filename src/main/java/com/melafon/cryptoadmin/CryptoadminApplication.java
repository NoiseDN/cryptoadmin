package com.melafon.cryptoadmin;

import de.codecentric.boot.admin.config.EnableAdminServer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@EnableAdminServer
public class CryptoadminApplication {

	public static void main(String[] args) {
		SpringApplication.run(CryptoadminApplication.class, args);
	}
}
