package com.xhu.wechat;

import java.util.ArrayList;
import java.util.List;

import org.sword.wechat4j.event.EventType;
import org.sword.wechat4j.menu.Menu;
import org.sword.wechat4j.menu.MenuButton;
import org.sword.wechat4j.menu.MenuManager;

public class MenuUtil {
	private MenuManager menuManager = new MenuManager();
	
	public void createMenu() throws Exception {
		Menu menu = new Menu();

		List<MenuButton> buttons = new ArrayList<MenuButton>();
		List<MenuButton> sub_buttons = new ArrayList<MenuButton>();
		
		buttons.add(createbutton1());
		buttons.add(createbutton2());
		menu.setButton(buttons);

		menuManager.create(menu);
	}
	
	public MenuButton createbutton1() {
		MenuButton menuButton = new MenuButton();
		menuButton.setName("多维");

		MenuButton mb1 = new MenuButton();
		mb1.setType(EventType.view);
		mb1.setName("预定");
		mb1.setUrl("http://hhpnhsj.imwork.net/index");

		MenuButton mb2 = new MenuButton();
		mb2.setType(EventType.view);
		mb2.setName("个人中心");
		mb2.setUrl("http://hhpnhsj.imwork.net/index#!3");

		List<MenuButton> buttons = new ArrayList<MenuButton>();
		buttons.add(mb1);
		buttons.add(mb2);

		menuButton.setSubButton(buttons);
		return menuButton;
	}

	/**
	 * 创建第二个菜单项
	 * 
	 * @return
	 * @throws Exception
	 */
	public MenuButton createbutton2() throws Exception {
		MenuButton menuButton = new MenuButton();
		menuButton.setName("账户");

		MenuButton mb1 = new MenuButton();
		mb1.setType(EventType.view);
		mb1.setName("登录");
		mb1.setUrl("http://hhpnhsj.imwork.net/login");

		List<MenuButton> buttons = new ArrayList<MenuButton>();
		buttons.add(mb1);

		menuButton.setSubButton(buttons);
		return menuButton;
	}
	
	public static void main(String[] args) throws Exception {
		new MenuUtil().createMenu();
	}
	
}
