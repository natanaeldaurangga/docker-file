package com.nael.demodocker.controllers;

import java.io.OutputStream;
import java.io.PrintStream;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/hello")
public class HelloController {

	@Value("${NAMA_USER}")
	private String name;

	@Value("${APP_DATA}")
	private String destination;

	@GetMapping
	public ResponseEntity<String> sayHello() {
		var printedName = name != null ? name : "";
		return ResponseEntity.ok("Hello " + printedName + " !!");
	}

	@GetMapping("{name}")
	public ResponseEntity<?> greeting(@PathVariable("name") String name) {
		Path path = Path.of(destination+ "/" + name + ".txt");

		try (OutputStream stream = Files.newOutputStream(path);
			PrintStream printStream = new PrintStream(stream)) {
			printStream.println("Hello " + name);
			System.out.println("Hello " + name);
			return ResponseEntity.ok("Hello " + name);
		} catch (Exception e) {
			return ResponseEntity.internalServerError().build();
		}

	}

}
