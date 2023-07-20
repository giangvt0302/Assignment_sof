//package com.example.demo.Interceptor;
//
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
//import org.springframework.stereotype.Component;
//import org.springframework.web.servlet.HandlerInterceptor;
//
//import java.io.IOException;
//
//@Component
//public class AuthenticateInterceptor implements HandlerInterceptor {
//    @Override
//    public boolean preHandle(
//            HttpServletRequest request,
//            HttpServletResponse response,
//            Object handler
//    ) throws IOException {
//        HttpSession session = request.getSession();
//        if (session.getAttribute("acc") == null) {
//            session.setAttribute("errorMessage", "Vui lòng đăng nhập");
//            response.sendRedirect(
//                    request.getContextPath() + "/login"
//            );
//            return false;
//        }
//
//        return true;
//    }
//}
