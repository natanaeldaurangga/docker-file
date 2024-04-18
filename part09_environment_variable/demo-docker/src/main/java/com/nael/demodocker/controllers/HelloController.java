package com.nael.demodocker.controllers;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/hello")
public class HelloController {

	@Value("${NAMA_USER}")
	private String name;

	@GetMapping
	public ResponseEntity<String> sayHello() {
		var printedName = name != null ? name : "";
		return ResponseEntity.ok("Hello " + printedName + " !!");
	}

}
