package com.xhu.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

public class MyUtils {
	/**
	 * 
	 * @return 获取当前日期与时间
	 */
	public static String getCurrentDateTime(){
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return df.format(new Date());
	}
	
	/**
	 * 
	 * @return 仅获取当前日期
	 */
	public static String getCurrentDate(){
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		return df.format(new Date());
	}
	
	/**
	 * 
	 * @param date
	 * @return 将日期类型转换为字符串类型
	 */
	public static String getDateForString(Date date){
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		return df.format(date).toString();
	}
	
	/**
	 * 
	 * @param str
	 * @param regex
	 * @return 将字符串通过指定分隔符分割并放到一个字符串数组中
	 */
	public static String[] splitString(String str, String regex){
		String []rs = str.split(regex);
		return rs;
	}
	/**
	 * 
	 * @param length
	 * @return 生成指定长度的数字字符串
	 */
	public static String getRandomNum(int length){
		StringBuilder sb = new StringBuilder();
        Random rand = new Random();
        for(int i=0; i<length; i++){
            sb.append(rand.nextInt(10));
        }
        return sb.toString();
	}
	
	public static String getRandomString(int length){
		StringBuffer sb = new StringBuffer();
		String str="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";		
		Random random = new Random();
		for(int i=0; i<length; i++){
			int number = random.nextInt(62);
			sb.append(str.charAt(number));
		}
		return sb.toString();
	}
	
	public static String SHA1(String decript) {
		try {
			MessageDigest digest = java.security.MessageDigest.getInstance("SHA-1");
			digest.update(decript.getBytes());
			byte messageDigest[] = digest.digest();
			// Create Hex String
			StringBuffer hexString = new StringBuffer();
			// 字节数组转换为 十六进制 数
			for (int i = 0; i < messageDigest.length; i++) {
				String shaHex = Integer.toHexString(messageDigest[i] & 0xFF);
				if (shaHex.length() < 2) {
					hexString.append(0);
				}
				hexString.append(shaHex);
			}
			return hexString.toString();

		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return "";
	}
	
	
}
