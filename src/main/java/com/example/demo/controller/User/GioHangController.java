package com.example.demo.controller.User;

import com.example.demo.entity.*;
import com.example.demo.respository.BrandRepository;
import com.example.demo.respository.GioHangChiTietRepository;
import com.example.demo.respository.GioHangRepository;
import com.example.demo.respository.LaptopRepository;
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

import jakarta.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/gio-hang")
public class GioHangController {
    @Autowired
    LaptopRepository laptopRepository;

    @Autowired
    BrandRepository brandRepository;

    @Autowired
    GioHangChiTietRepository gioHangChiTietRepository;

    @Autowired
    GioHangRepository gioHangRepository;

    @GetMapping(value = { "/home"})
    public String pageGioHang(Model model,
                              HttpSession session) {
        Accounts accounts = (Accounts) session.getAttribute("acc");
        GioHang gioHang = gioHangRepository.findByAccounts(accounts);
        List<GioHangChiTiet> list = gioHangChiTietRepository.findByIdGioHang(gioHang);
        Integer soLuong = 0;
        float price = Long.valueOf(0);
        for (GioHangChiTiet ghct : list) {
            soLuong += Integer.parseInt(String.valueOf(ghct.getSoLuong()));
//            System.out.println(ghct.getId().getGioHang().getId());
            price += ghct.getSoLuong() * ghct.getId().getLaptop().getPrice();
            ghct.getId().getLaptop().getPrice();
        }

        session.removeAttribute("soLuong");
        session.setAttribute("soLuong", soLuong);

        model.addAttribute("list", list);
        model.addAttribute("tongGia", price);
        return "user/gio-hang";
    }

    @GetMapping("/them-gio-hang/{id}")
    public String themGioHang(Model model,
                              HttpSession session,
                              @PathVariable("id") Integer id
    ) {
        Accounts accounts = (Accounts) session.getAttribute("acc");
        GioHang gioHang = gioHangRepository.findByAccounts(accounts);
        Laptop laptop = this.laptopRepository.findById(id).get();
        GioHangChiTiet gh = gioHangChiTietRepository.findByIdLaptopAndIdGioHang(laptop, gioHang);

        if (gh != null) {
            gh.setSoLuong(gh.getSoLuong() + 1);
            gioHangChiTietRepository.save(gh);
            return "redirect:/gio-hang/home";
        }
        GioHangChiTiet gioHangChiTiet = new GioHangChiTiet();
        GioHangChiTietId gioHangChiTietId = new GioHangChiTietId(gioHang, laptop);
        gioHangChiTiet.setId(gioHangChiTietId);
        gioHangChiTiet.setSoLuong(1);
        gioHangChiTietRepository.save(gioHangChiTiet);

        return "redirect:/gio-hang/home";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam(name = "idSP") Integer idSP,
                         @RequestParam(name = "idGioHang") Integer idGH
    ) {
        Laptop Laptop = new Laptop();
        Laptop.setId(idSP);
        GioHang gioHang = new GioHang();
        gioHang.setId(idGH);
        GioHangChiTietId gioHangChiTietId = new GioHangChiTietId(gioHang, Laptop);
        gioHangChiTietRepository.deleteById(gioHangChiTietId);
        return "redirect:/gio-hang/home";
    }

    @GetMapping("/giam")
    public String giamSoLuong(
            @RequestParam(name = "idSP") Integer idSP,
            @RequestParam(name = "idGioHang") Integer idGH
    ) {
        Laptop Laptop = new Laptop();
        Laptop.setId(idSP);
        GioHang gioHang = new GioHang();
        gioHang.setId(idGH);
        GioHangChiTietId gioHangChiTietId = new GioHangChiTietId(gioHang, Laptop);
        GioHangChiTiet gioHangChiTiet = gioHangChiTietRepository.findById(gioHangChiTietId).get();
        gioHangChiTiet.setSoLuong(gioHangChiTiet.getSoLuong() - 1);
        if (gioHangChiTiet.getSoLuong() <= 0) {
            gioHangChiTietRepository.deleteById(gioHangChiTietId);
        } else {
            gioHangChiTietRepository.save(gioHangChiTiet);
        }
        System.out.println(gioHangChiTiet.getSoLuong());
        return "redirect:/gio-hang/home";
    }

    @GetMapping("/tang")
    public String tangSoLuong(Model model,
                              @RequestParam(name = "idSP") Integer idSP,
                              @RequestParam(name = "idGioHang") Integer idGH
    ) {
        Laptop Laptop = new Laptop();
        Laptop.setId(idSP);
        GioHang gioHang = new GioHang();
        gioHang.setId(idGH);
        Laptop sp = laptopRepository.findById(idSP).get();
        GioHangChiTietId gioHangChiTietId = new GioHangChiTietId(gioHang, Laptop);
        GioHangChiTiet gioHangChiTiet = gioHangChiTietRepository.findById(gioHangChiTietId).get();
        String message = "";
//        boolean check = checkSP(gioHangChiTiet.getSoLuong(), sp.getSoLuong(), message);
        if(gioHangChiTiet.getSoLuong()== sp.getQuantity()){
            message = "Số lượng hàng trong giỏ hàng của bạn không thể lớn hơn số lượng hàng trong kho";
            model.addAttribute("message", message);
        }else {
            gioHangChiTiet.setSoLuong(gioHangChiTiet.getSoLuong() + 1);
            gioHangChiTietRepository.save(gioHangChiTiet);
        }
        return "redirect:/gio-hang/home";
    }


}
