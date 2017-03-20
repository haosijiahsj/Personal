package com.xhu.utils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

public class SmsUtil {
	public static void main(String[] args) {
		String postUrl = "http://106.ihuyi.cn/webservice/sms.php?method=Submit";
		 
		int mobile_code = (int)((Math.random()*9+1)*100000); //获取随机数
		 
		String account = "C20042169"; //用户名是登录ihuyi.com账号名（例如：cf_demo123）
		String password = "fe389a1659892a38bdff6b9fa265013e";  //查看密码请登录用户中心->验证码、通知短信->帐户及签名设置->APIKEY
		String mobile = "15520761820";
		String content = "您的验证码是：" + mobile_code + "请不要把验证码泄露给其他人";
		try {
		 
		    URL url = new URL(postUrl);
		    HttpURLConnection connection = (HttpURLConnection) url.openConnection();
		    connection.setDoOutput(true);//允许连接提交信息
		    connection.setRequestMethod("POST");//网页提交方式"GET"、"POST"
		    connection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
		    connection.setRequestProperty("Connection", "Keep-Alive");
		    StringBuffer sb = new StringBuffer();
		    sb.append("account="+account);
		    sb.append("&password="+password);
		    sb.append("&mobile="+mobile);
		    sb.append("&content="+content);
		    OutputStream os = connection.getOutputStream();
		    os.write(sb.toString().getBytes());
		    os.close();
		 
		    String line, result = "";
		    BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream(), "utf-8"));
		    while ((line = in.readLine()) != null) {
		        result += line + "\n";
		    }
		    in.close();
		    System.out.println(result);
		 
		} catch (IOException e) {
		    e.printStackTrace(System.out);
		}
	}
	}