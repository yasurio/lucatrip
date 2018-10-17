package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GlobalController {

	private static final Logger logger = LoggerFactory.getLogger(GlobalController.class);

	@RequestMapping("/")
	public ModelAndView index(HttpServletRequest req) {
		logger.info("index");
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("index");
		return modelAndView;
	}

	
	
	@RequestMapping("/crearEvento")
	public ModelAndView crearEvento(HttpServletRequest req) {
		logger.info("crearEvento");
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("crearEvento");
		return modelAndView;
}
	@RequestMapping("/register")
	public ModelAndView register(HttpServletRequest req) {
		logger.info("register");
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("register");
		return modelAndView;
	}

	@RequestMapping("/login")
	public ModelAndView login(HttpServletRequest req) {
		logger.info("login");
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("login");
		return modelAndView;
	}
}
