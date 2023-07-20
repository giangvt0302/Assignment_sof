package com.example.demo.respository;

import com.example.demo.entity.Brand;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BrandRepository extends JpaRepository<Brand,Integer> {
    Brand findByName(String name);
}
