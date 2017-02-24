package com.xhu.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xhu.wechat.MyWechat;

@Controller
public class WechatController {
	
	@RequestMapping("/wechat.do")
	public void wechatValidate(HttpServletRequest request, HttpServletResponse response){
		MyWechat myWechat = new MyWechat(request);
		String result = myWechat.execute();
		try {
			response.getOutputStream().write(result.getBytes());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
