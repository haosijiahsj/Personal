package com.xhu.utils;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.HtmlEmail;

public class MailUtil {
	private HtmlEmail htmlEmail;
	private static final String hostName = "smtp.qq.com";
	private static final String username = "1017547773@qq.com";
	private static final String password = "ecyswwadnwkqbfcd";
	private static final String sendUsername = "hhssjj";
	
	public MailUtil(){
		htmlEmail = new HtmlEmail();
		htmlEmail.setHostName(hostName);
        htmlEmail.setAuthentication(username, password);
        htmlEmail.setSSLOnConnect(true);
	}

	public String sendEmail(String subject, String msg, String[] to) throws EmailException{
		htmlEmail.setFrom(username, sendUsername);
		for(String t : to){
			htmlEmail.addTo(t, username);
		}
		htmlEmail.setSubject(subject);
		htmlEmail.setMsg(msg);
		return htmlEmail.send();
	}
	
	public static void main(String[] args) {
		MailUtil mu = new MailUtil();
		try {
			String str = mu.sendEmail("1556", "17654353", new String []{"15520761820@163.com"});
			System.out.println(str);
		} catch (EmailException e) {
			e.printStackTrace();
		}
	}
	
}
