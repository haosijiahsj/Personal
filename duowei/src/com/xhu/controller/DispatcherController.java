package com.xhu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DispatcherController {
	
	/**
	 * 使用转发，RESTful格式，好看一些
	 * @return
	 */
	@RequestMapping("/index")
	public ModelAndView toIndex(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
		return mav;
	}
	
	@RequestMapping("/login")
	public ModelAndView toLogin(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login");
		return mav;
	}
	
}
