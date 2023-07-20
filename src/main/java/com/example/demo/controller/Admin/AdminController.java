package com.example.demo.controller.Admin;

import com.example.demo.entity.Brand;
import com.example.demo.entity.Laptop;
import com.example.demo.respository.BrandRepository;
import com.example.demo.respository.LaptopRepository;

import jakarta.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import jakarta.validation.Valid;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    LaptopRepository laptopRepository;

    @Autowired
    ServletContext context;

    @Autowired
    BrandRepository brandRepository;

    @GetMapping(value = { "/home"})
    public String homepage(Model model) {
        List<Laptop> lst = laptopRepository.findAll();
        model.addAttribute("dsLaptop",lst);
        return "admin/home";
    }


    @GetMapping("/add")
    public String viewAdd(Model model){
        List<Brand> dsBrand = brandRepository.findAll();
        List<Laptop> laptop = laptopRepository.findAll();
        model.addAttribute("dsBrand", dsBrand);
        model.addAttribute("laptop", new Laptop());
        return "admin/create";
    }

    @Value("${upload.path}")
    private String pathFolder;


    @PostMapping("/add")
    public String addLaptop(Model model,
                            @Valid @ModelAttribute("laptop") Laptop lap,
                             BindingResult result,
                             @RequestParam( value = "file",required =false) MultipartFile file ) {

        if (result.hasErrors()) {
            return "redirect:/admin/add";
        }
        String fileOriginal = file.getOriginalFilename();
        String fileDest = context.getRealPath("/image/" +  fileOriginal);
        System.out.println(fileDest);

        try {
            file.transferTo(new File(fileDest));
        } catch (IllegalStateException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        lap.setImage(fileOriginal);
        laptopRepository.save(lap);
        return "redirect:/admin/home";

//
//        try {
//            if(!file.isEmpty()){
//                // add
//                byte[] bytes = file.getBytes();
//                Path path = Paths.get(pathFolder + file.getOriginalFilename());
//                Files.write(path, bytes);
//                lap.setImage(file.getOriginalFilename());
//
//                this.laptopRepository.save(lap);
//
//                return "redirect:/admin/home";
//            }
//        }catch (Exception e){
//            e.printStackTrace();
//            System.out.println("Lỗi ở thêm laptop");
//        }
                //return "redirect:/admin/add";
    }

    @GetMapping("delete/{id}")
    public String delete(@PathVariable("id") Laptop laptop) {

        this.laptopRepository.delete(laptop);
        return "redirect:/admin/home";
    }

    @GetMapping("edit/{id}")
    public String edit(@PathVariable("id") Integer id , Model model) {
        Laptop lap = this.laptopRepository.findById(id).get();
        List<Brand> dsBrand = brandRepository.findAll();
        model.addAttribute("dsBrand", dsBrand);
        model.addAttribute("ds", lap);
        model.addAttribute("lapUpdate", new Laptop());
        return "admin/edit";
    }

    @PostMapping("update/{id}")
    public String update(Model model, @Valid @ModelAttribute("laptop") Laptop lap,
                         @RequestParam( value = "file",required =false) MultipartFile file) {

        String fileOriginal = file.getOriginalFilename();
        String fileDest = context.getRealPath("/image/" +  fileOriginal);
        System.out.println(fileDest);

        try {
            file.transferTo(new File(fileDest));
        } catch (IllegalStateException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        lap.setImage(fileOriginal);
        laptopRepository.save(lap);
        return "redirect:/admin/home";
    }
}
