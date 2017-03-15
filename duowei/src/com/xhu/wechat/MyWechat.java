package com.xhu.wechat;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.sword.wechat4j.WechatSupport;
import org.sword.wechat4j.user.LanguageType;
import org.sword.wechat4j.user.User;
import org.sword.wechat4j.user.UserManager;

import com.xhu.utils.MyUtils;

public class MyWechat extends WechatSupport {

	public MyWechat(HttpServletRequest request) {
		super(request);
	}

	@Override
	protected void click() {
			
	}

	@Override
	protected void location() {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected void locationSelect() {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected void onImage() {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected void onLink() {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected void onLocation() {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected void onText() {
		String content = super.wechatRequest.getContent().trim();
		System.out.println(content);
		String openId =  super.wechatRequest.getFromUserName();
		System.out.println(openId);
		responseText("您好，欢迎使用多维家政服务平台微信公众号");
	}

	@Override
	protected void onUnknown() {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected void onVideo() {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected void onVoice() {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected void picPhotoOrAlbum() {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected void picSysPhoto() {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected void picWeixin() {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected void scan() {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected void scanCodePush() {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected void scanCodeWaitMsg() {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected void subscribe() {
		responseText("你来啦。。。");		
	}

	@Override
	protected void templateMsgCallback() {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected void unSubscribe() {
		// TODO Auto-generated method stub
		
	}
	
	/**
	 * 菜单点击后跳转到页面的事件
	 */
	@Override
	protected void view() {
		//获取用户的昵称和头像
		String openId = this.wechatRequest.getFromUserName();
		UserManager um = new UserManager();
		User user = um.getUserInfo(openId, LanguageType.zh_CN);
		String nickname = MyUtils.ecodingChange(user.getNickName());
		String headImgUrl = user.getHeadimgUrl();
		System.out.println("昵称：" + nickname+" 头像路径：" + headImgUrl);
	}

	@Override
	protected void kfCloseSession() {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected void kfCreateSession() {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected void kfSwitchSession() {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected void onShortVideo() {
		// TODO Auto-generated method stub
		
	}

}
