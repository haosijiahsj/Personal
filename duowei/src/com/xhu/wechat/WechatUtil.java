package com.xhu.wechat;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.sword.wechat4j.exception.WeChatException;
import org.sword.wechat4j.menu.Menu;
import org.sword.wechat4j.menu.MenuButton;
import org.sword.wechat4j.menu.MenuManager;
import org.sword.wechat4j.token.TokenProxy;

import com.alibaba.fastjson.JSONObject;
import com.xhu.utils.MyUtils;

public class WechatUtil {
	
	//生成微信签名方法
	public static Map<String, String> getSign(String url){
		Map<String, String> map = new HashMap<String, String>();
		String jsapi_ticket = TokenProxy.jsApiTicket();		
		String timestamp = String.valueOf(System.currentTimeMillis()/1000);
		String noncestr = MyUtils.getRandomString(6);		
		
		String string1 = "jsapi_ticket="+jsapi_ticket+"&noncestr="+noncestr+"&timestamp="+timestamp+"&url="+url;
		
		String signature = MyUtils.SHA1(string1);
		
		map.put("timestamp", timestamp);
		map.put("noncestr", noncestr);
		map.put("signature", signature);
		
//		System.out.println("string1:"+string1);
//		System.out.println("jsapi_ticket:"+ jsapi_ticket);
//		System.out.println("timestamp:"+ timestamp);
//		System.out.println("noncestr:"+ noncestr);
//		System.out.println("signature:"+ signature);
		
		return map;
	}
	
	public static Map<String, String> getUsersInfo(){
		Map<String, String> map = new HashMap<String, String>();
		
		return map;
	}
	
	/**
	 * 生成微信菜单
	 * @throws WeChatException 
	 */
	public static void createMenu(String menuJson) throws WeChatException {
		MenuManager menuManager = new MenuManager();
		List<MenuButton> buttons = new ArrayList<MenuButton>();
		JSONObject menuObject = JSONObject.parseObject(menuJson);
		Menu menu = menuObject.getObject("menu", Menu.class);
		menu.setButton(buttons);
		menuManager.create(menu);
	}
	
}
