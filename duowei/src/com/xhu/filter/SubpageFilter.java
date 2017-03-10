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

import com.xhu.utils.MyUtils;

public class SubpageFilter implements Filter {

	private String []filterPages = null;
	@Override
	public void destroy() {}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse)resp;
		chain.doFilter(req, resp);
		
	}

	@Override
	public void init(FilterConfig fConfig) throws ServletException {
		filterPages = MyUtils.splitString(fConfig.getInitParameter("filterPages"), ",");
	}
	
	/**
	 * 判断该请求是不是ajax请求
	 * @param request
	 * @return
	 */
	public boolean isAjaxRequest(HttpServletRequest request){  
	    String header = request.getHeader("X-Requested-With");  
	    boolean isAjax = "XMLHttpRequest".equals(header) ? true:false;  
	    return isAjax;
	}
}
