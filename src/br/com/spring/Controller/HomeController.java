package br.com.spring.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String indexPage(){
		System.out.println("carregando index...");
		return "index";
	}
}
