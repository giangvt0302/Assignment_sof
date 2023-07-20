package com.example.demo.controller.User;

import com.example.demo.entity.*;
import com.example.demo.respository.*;
import jakarta.servlet.http.HttpSession;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/hoa-don")
public class HoaDonController {

    @Autowired
    GioHangRepository gioHangRepository;

    @Autowired
    GioHangChiTietRepository gioHangChiTietRepository;

    @Autowired
    HoaDonRepository hoaDonRepository;

    @Autowired
    LaptopRepository laptopRepository;

    @Autowired
    HoaDonChiTietRepository hoaDonChiTietRepository;

    @Autowired
    AccountsRespository accountsRespository;

    @GetMapping("/show")
    public String orderPage(Model model,
                            HttpSession session) {
        Accounts accounts = (Accounts) session.getAttribute("acc");
        GioHang gioHang = gioHangRepository.findByAccounts(accounts);
        List<GioHangChiTiet> list = gioHangChiTietRepository.findByIdGioHang(gioHang);
        if(list.size() == 0){
            return "redirect:/gio-hang/home";
        }
        float price = Long.valueOf(0);
        for (GioHangChiTiet ghct : list) {
            price += ghct.getSoLuong() * ghct.getId().getLaptop().getPrice();
            model.addAttribute("messsage", "số lượng sản phẩm trong kho k đủ");
        }
        model.addAttribute("list", list);
        model.addAttribute("tongGia", price);
        return "/user/hoa-don";
    }

    @GetMapping("/thanh-toan")
    public String thanhToan(Model model,
                            HttpSession session) {
        Accounts accounts = (Accounts) session.getAttribute("acc");
        GioHang gh= gioHangRepository.findByAccounts(accounts);
        List<GioHangChiTiet> list = gioHangChiTietRepository.findAll();
        String ma = RandomStringUtils.randomAlphabetic(8);
        Date date = new Date();
        String trangThai = "chờ";
        float tongGia = Long.valueOf("0");
        for (GioHangChiTiet ghct : list) {
            tongGia += ghct.getSoLuong() * ghct.getId().getLaptop().getPrice();
            if(ghct.getSoLuong() > ghct.getId().getLaptop().getPrice()){
                return "redirect:/hoa-don/show";
            }
        }
        session.setAttribute("soLuong", 0);
        gioHangChiTietRepository.deleteByIdGioHang(gh);
        HoaDon hoaDon = new HoaDon(accounts, ma, trangThai, date, date, (long) tongGia);
        HoaDonChiTiet hoaDonChiTiet;
        hoaDonRepository.save(hoaDon);
        for (GioHangChiTiet ghct : list) {
            HoaDonChiTietId hoaDonChiTietId = new HoaDonChiTietId(hoaDon, ghct.getId().getLaptop());
            float price = ghct.getSoLuong() * ghct.getId().getLaptop().getPrice();
            hoaDonChiTiet = new HoaDonChiTiet(hoaDonChiTietId, ghct.getSoLuong(), (long) price);

            Laptop sp = ghct.getId().getLaptop();
            sp.setQuantity(sp.getQuantity() - ghct.getSoLuong());
            laptopRepository.save(sp);
            hoaDonChiTietRepository.save(hoaDonChiTiet);
        }

        return "user/thanh-toan";
    }

    @GetMapping("/danh-sach-da-mua")
    public String listOrderPage(Model model,
                                HttpSession session) {
        Accounts accounts = (Accounts) session.getAttribute("acc");

        List<HoaDon> listHoaDon = hoaDonRepository.getOrderByAccountsId(accounts.getId());
        List<HoaDonChiTiet> listHdct = new ArrayList<>();
        for (HoaDon hd : listHoaDon) {
           listHdct = hoaDonChiTietRepository.findByIdHoaDon(hd);
        }

        model.addAttribute("dsHoaDon", listHoaDon);
        return "user/danh-sach-hoa-don";
    }

    @GetMapping("/chi-tiet/{id}")
    public String orderDetailPage(Model model,
                                  @PathVariable("id") Integer id) {
        List<HoaDonChiTiet> listSP = hoaDonRepository.getLaptopByIdOrder(id);
        Long tongGia = Long.valueOf("0");
        Long giaBan = Long.valueOf("0");
        for (HoaDonChiTiet hdct : listSP) {
            tongGia += hdct.getGia();
        }

        model.addAttribute("tongGia", tongGia);
        model.addAttribute("listSP", listSP);
        return "user/detail-hoa-don";
    }
}
