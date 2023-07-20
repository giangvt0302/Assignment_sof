package com.example.demo.controller.Admin;

import com.example.demo.entity.Brand;
import com.example.demo.respository.BrandRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import jakarta.validation.Valid;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/admin")
public class BrandController {
    @Autowired
    BrandRepository BrandRepository;

    @GetMapping(value = { "/brand/home"})
    public String homepage(Model model) {
        List<Brand> lst = BrandRepository.findAll();
        model.addAttribute("dsBrand",lst);

        return "admin/brand/home";
    }

//    @GetMapping("detail/{maSinhVien}")
//    public String detailSinhVien(@PathVariable("id") String ma, Model model) {
//        for (Brand l : this.BrandRepository.findAll()) {
//            if (l.getId().equals(ma)) {
//                model.addAttribute("detailBrand", l);
//            }
//        }
//        return "admin/home";
//    }

    @GetMapping("/brand/add")
    public String viewAdd(Model model){
        model.addAttribute("brand", new Brand());
        return "admin/brand/create";
    }


    @PostMapping("/brand/add")
    public String addStudent(Model model, @Valid @ModelAttribute("Brand") Brand brand, BindingResult result) {
        if (result.hasErrors()) {
            return "admin/home";
        }
        model.addAttribute("Brand",new Brand());
        Brand lap = new Brand();

        lap.setName(brand.getName());

        lap.setMa(brand.getMa());
        // add
        this.BrandRepository.save(lap);
        // chuyen ve trang chu
        return "redirect:/admin/brand/home";
    }

    @GetMapping("/brand/delete/{id}")
    public String delete(@PathVariable("id") Brand brand) {
        this.BrandRepository.delete(brand);
        return "redirect:/admin/brand/home";
    }

    @GetMapping("/brand/edit/{id}")
    public String edit(@PathVariable("id") Integer id , Model model) {
        Optional<Brand> optional = this.BrandRepository.findById(id);
       // model.addAttribute("product",optional.orElse(null));
        model.addAttribute("brand", optional.orElse(null));
        return "admin/brand/edit";
    }

    @PostMapping("/brand/update/{id}")
    public String update(Model model,@PathVariable("id") Integer id , @Valid @ModelAttribute("Brand") Brand brand) {
        System.out.print("acc");

        Brand lap = this.BrandRepository.getById(id);
        lap.setName(brand.getName());


        lap.setMa(brand.getMa());
        this.BrandRepository.save(lap);
        return "redirect:/admin/brand/home";
    }
}
