package com.example.demo.controller.User;

import com.example.demo.entity.*;
import com.example.demo.respository.BrandRepository;
import com.example.demo.respository.GioHangChiTietRepository;
import com.example.demo.respository.GioHangRepository;
import com.example.demo.respository.LaptopRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    LaptopRepository laptopRepository;

    @Autowired
    BrandRepository brandRepository;

    @Autowired
    GioHangChiTietRepository gioHangChiTietRepository;

    @Autowired
    GioHangRepository gioHangRepository;

    @GetMapping(value = { "/home"})
    public String homepage(Model model,
                           @RequestParam(name = "pageNum" ,defaultValue = "1") Integer pageNum,
                           @RequestParam(name = "pageSize",defaultValue = "4")Integer pageSize,
                           HttpSession session) {
        Accounts accounts = (Accounts) session.getAttribute("acc");
        GioHang gioHang = gioHangRepository.findByAccounts(accounts);
        List<GioHangChiTiet> list = gioHangChiTietRepository.findByIdGioHang(gioHang);
        Integer soLuong = 0;
        for(GioHangChiTiet ghct : list){
            soLuong += Integer.parseInt(String.valueOf(ghct.getSoLuong()));
        }
        session.setAttribute("quantity", soLuong);
        Pageable pageable = PageRequest.of(pageNum - 1, pageSize);
        Page<Laptop> page = this.laptopRepository.findAll(pageable);
        List<Brand> lstBrand = brandRepository.findAll();
        model.addAttribute("listBrand", lstBrand);

        model.addAttribute("dsLaptop", page.getContent());
        model.addAttribute("totalPage", page.getTotalPages());
        return "user/home";
    }

    @GetMapping("/detail/{id}")
    public String detail(Model model,
                         @PathVariable(name = "id") Integer laptopId){
        model.addAttribute("detailLaptop", laptopRepository.findById(laptopId).get());
        return "user/detail_laptop";
    }

    @GetMapping("/home/{name}")
    public String productPageByCate(Model model,
                                    @PathVariable(name = "name") String name
    ){
        Brand brand = brandRepository.findByName(name);
//        List<Brand> lstBrand = brandRepository.findAll();
        List<Laptop> lst = laptopRepository.getLaptopByBrand(brand);
//        model.addAttribute("listBrand", lstBrand);
        model.addAttribute("dsLaptop", lst);
        return "user/home";
    }

    @GetMapping(value = { "/gioithieu"})
    public String gioiThieu(Model model
                          ) {
        return "user/gioithieu";
    }

    @GetMapping(value = { "/sukien"})
    public String suKien(Model model
    ) {
        return "user/sukien";
    }
}
