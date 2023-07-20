package com.example.demo.respository;

import com.example.demo.entity.Brand;
import com.example.demo.entity.Laptop;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface LaptopRepository extends JpaRepository<Laptop,Integer> {
    List<Laptop> getLaptopByBrand(Brand brand);


}
