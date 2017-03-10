package com.xhu.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 该过滤器主要负责检测浏览器是不是微信浏览器，如果是则放行，不是则转到相关提示页面
 */

public class WechatFilter implements Filter {
	private String isOpen = "true";

    public WechatFilter() {}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {}

	/**
	 * isOpen为配置选项，true表示该过滤器生效，false失效，默认生效
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		if("false".equals(isOpen)){
			chain.doFilter(request, response);
			return;
		}		
		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse resq = (HttpServletResponse)response;
		String userAgent = req.getHeader("user-agent").toLowerCase();
		if(userAgent.indexOf("micromessenger")>-1){//微信客户端
			chain.doFilter(request, response);
		}else{
			resq.sendRedirect(req.getContextPath()+"/public/error.html");
		}
		
		
	}

	/**
	 * 读取web.xml中的初始化参数
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		this.isOpen = fConfig.getInitParameter("isOpen");
	}

}
