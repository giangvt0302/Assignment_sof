//package com.example.demo.Interceptor;
//
//import com.example.demo.entity.Accounts;
//import jakarta.persistence.Entity;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
//import org.springframework.stereotype.Component;
//import org.springframework.web.servlet.HandlerInterceptor;
//
//import java.io.IOException;
//
//@Component
//public class AdminInterceptor implements HandlerInterceptor {
//    @Override
//    public boolean preHandle(
//            HttpServletRequest request,
//            HttpServletResponse response,
//            Object handler
//    ) throws IOException {
//        HttpSession session = request.getSession();
//        Accounts acc = (Accounts) session.getAttribute("acc");
//
//        if (acc.getAdmin() != 1) {
//            response.sendRedirect( request.getContextPath() + "/home" );
//            return false;
//        }
//
//        return true;
//    }
//}
