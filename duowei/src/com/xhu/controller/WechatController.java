package com.xhu.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xhu.wechat.MyWechat;
import com.xhu.wechat.WechatUtil;

@Controller
public class WechatController {
	
	/**
	 * 获取用户发送的消息，并回复
	 * @param request
	 * @param response
	 */
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
	
	/**
	 * 计算jssdk的签名，以调用jssdk
	 * @param url
	 * @return
	 */
	@RequestMapping("/forUseJssdk.do")
	@ResponseBody
	public Map<String, String> forUseJssdk(String url){
		return WechatUtil.getSign(url);
	}
	
	
}
