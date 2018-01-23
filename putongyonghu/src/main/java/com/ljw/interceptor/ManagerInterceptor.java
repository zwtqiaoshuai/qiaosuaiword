package com.ljw.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class ManagerInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		if (request.getRequestURI().equals("/user/toLogin") 
				|| request.getRequestURI().equals("/user/login")||request.getRequestURI().equals("/user/toRegister")||request.getRequestURI().equals("/user/register")) {
			return true;
		}
		// 验证session是否存在
		Object object = request.getSession().getAttribute("uu");
		if (object == null) {
			response.sendRedirect("/user/toLogin");
			return false;
		}
		return true;

	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub

	}

}
