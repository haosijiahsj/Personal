package com.xhu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DispatcherController {
	
	@RequestMapping("/index.do")
	public ModelAndView toIndex(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index.jsp");
		return mav;
	}
	
	@RequestMapping("/duowei.do")
	public ModelAndView toDuowei(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("duowei.jsp");
		return mav;
	}
	
	@RequestMapping("/order.do")
	public ModelAndView toOrder(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("order.jsp");
		return mav;
	}
	
	@RequestMapping("/vip.do")
	public ModelAndView toVip(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("vip.jsp");
		return mav;
	}
	
	@RequestMapping("/personal.do")
	public ModelAndView toPersonal(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("personal.jsp");
		return mav;
	}
	
	@RequestMapping("/login")
	public ModelAndView toLogin(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login");
		return mav;
	}
	
}
