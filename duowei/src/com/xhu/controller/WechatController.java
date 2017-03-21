package com.xhu.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.sword.wechat4j.exception.WeChatException;

import com.xhu.wechat.MyWechat;
import com.xhu.wechat.WechatUtil;

@Controller
public class WechatController {
	
	/**
	 * 获取用户发送的消息，并回复
	 * @param request
	 * @param response
	 */
	@RequestMapping("/wechat")
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
	@RequestMapping("/forUseJssdk")
	@ResponseBody
	public Map<String, String> forUseJssdk(String url){
		return WechatUtil.getSign(url);
	}
	
	/**
	 * 创建一个微信菜单
	 * @param menuJson
	 * @return
	 */
	@RequestMapping("/createWechatMenu")
	@ResponseBody
	public String createWechatMenu(String menuJson){
		try {
			WechatUtil.createMenu(menuJson);
		} catch (WeChatException e) {
			return "创建失败："+e.getMessage();
		}
		return "创建成功";
	}
	
}
