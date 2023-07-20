package com.example.demo.controller;

import com.example.demo.entity.Accounts;
import com.example.demo.respository.AccountsRespository;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpSession;
//import jakarta.validation.Valid;
//import lombok.Getter;
//import org.eclipse.tags.shaded.org.apache.xpath.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class LoginController {
//    @Autowired
//    HttpServletRequest request;

    @Autowired
    private AccountsRespository accountsRespository;

    @GetMapping("/login")
    public String showLoginForm(Model model){
        model.addAttribute("acc", new Accounts());
        return "login";
    }

    @PostMapping("/login")
    public String checkLogin(Model model,
            @Valid @ModelAttribute("acc") Accounts acc,
            BindingResult result,
            HttpSession session
    ){
        if(result.hasErrors()) {
            return "login";
        }
        Accounts accFromDB = accountsRespository.findAccountsByUsernameAndAndPassword(acc.getUsername(),acc.getPassword());
        if(accFromDB != null ) {
            if(accFromDB.isRole()) {
                session.setAttribute("acc", accFromDB);
                return "redirect:user/home";
            }else {
                session.setAttribute("acc", accFromDB);
                return "redirect:admin/home";
            }
        }

        //login failed
        model.addAttribute("message", "Username or password or role incorrect");
        return "login";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login";
    }

}
