package com.xhu.utils;

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
		StringBuilder sb=new StringBuilder();
        Random rand=new Random();
        for(int i=0;i<length;i++)
        {
            sb.append(rand.nextInt(10));
        }
        return sb.toString();
	}
}
