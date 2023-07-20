package com.example.demo.filter;


import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

@Component
public class LoginInterceptor implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		Object obj = request.getSession().getAttribute("acc");
		if(obj != null) {
			return true;
		}

		response.sendRedirect(request.getContextPath() + "/login");
		return false;
	}

}
