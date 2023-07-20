//package com.example.demo.Interceptor;
//
//import com.example.demo.entity.Accounts;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Component;
//import org.springframework.web.servlet.HandlerInterceptor;
//import org.springframework.web.servlet.ModelAndView;
//
//@Component
//public class LoginInterceptor implements HandlerInterceptor, LoginInterceptors {
//    @Autowired
//    HttpSession httpSession;
//
//    @Autowired
//    HttpServletResponse response;
//
//
//    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
//            throws Exception {
//        // TODO Auto-generated method stub
//
//        Accounts account = (Accounts) httpSession.getAttribute("acc");
//        if(account == null) {
//            response.sendRedirect("/login");
//            return false;
//        }
//        return true;
//    }
//}
