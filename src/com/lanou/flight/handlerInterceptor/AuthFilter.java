package com.lanou.flight.handlerInterceptor;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AuthFilter implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        //获取根目录所对应的绝对路径
        String currentURL = request.getRequestURI();
        //截取到当前文件名用于比较
        String targetURL = currentURL.substring(currentURL.indexOf("/",1),currentURL.length());
//        System.out.println(targetURL);
        
        //如果session不为空就返回该session，如果为空就返回null
        HttpSession session = request.getSession(false);
        if(!"/entry.jsp".equals(targetURL) && !"/find_password.jsp".equals(targetURL)){
            //判断当前页面是否是重顶次昂后的登陆页面页面，如果是就不做session的判断，防止死循环
            if(session==null||session.getAttribute("user") == null){
                //如果session为空表示用户没有登陆就重定向到login.jsp页面
                //System.out.println("request.getContextPath()=" + request.getContextPath());  
                response.sendRedirect(request.getContextPath()+"/entry.jsp");
                return;
            }
        }

        //继续向下执行
        chain.doFilter(request, response);
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
