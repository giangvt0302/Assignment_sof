package com.example.demo.controller;

import com.example.demo.entity.Accounts;
import com.example.demo.entity.GioHang;
import com.example.demo.respository.AccountsRespository;
import com.example.demo.respository.GioHangRepository;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Date;

@Controller
public class RegisterController {

    @Autowired
    AccountsRespository accountsRespository;

    @Autowired
    GioHangRepository gioHangRepository;

    @GetMapping("/register")
    public String PageRegister(Model model){
        model.addAttribute("accounts", new Accounts());
        return "register";
    }

    @PostMapping("/register")
    public String CheckRegister(Model model,
                                @Valid @ModelAttribute("accs")Accounts accounts,
                                BindingResult result){
        if(result.hasErrors()){
            model.addAttribute("messageRegister", "Register false");
            return "register";
        }
        accounts.setRole(true);
        Date ngayTao = new Date();
        GioHang cartUser = new GioHang();
        cartUser.setAccounts(accounts);
        cartUser.setNgayTao(ngayTao);
        accountsRespository.save(accounts);
        if(accounts.isRole()){
            gioHangRepository.save(cartUser);
        }
        return "redirect:/login";
    }
}
