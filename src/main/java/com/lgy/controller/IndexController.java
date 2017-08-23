package com.lgy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/index")
public class IndexController {

	@RequestMapping("/springmvcsebsocket")
	public String springmvcsebsocket() {
		return "springmvcsebsocket";
	}

	@RequestMapping("")
	public String index() {
		return "index";
	}
}
