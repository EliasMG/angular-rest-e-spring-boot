package com.lancamento.api.security.util;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class GeradorSenha {

	public static void main(String[] args) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		System.out.println("Admin: " + encoder.encode("admin"));
		System.out.println("Maria: " + encoder.encode("maria"));
	}
	
}