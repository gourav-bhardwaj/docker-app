package com.sp;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoController {
	
	@GetMapping("/demo-app")
	public String demo() {
		return "It is a demo controller!!";
	}

}
