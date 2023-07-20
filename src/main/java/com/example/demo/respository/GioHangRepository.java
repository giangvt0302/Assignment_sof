package com.example.demo.respository;


import com.example.demo.entity.Accounts;
import com.example.demo.entity.GioHang;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GioHangRepository extends JpaRepository<GioHang, String> {
    GioHang findByAccounts(Accounts accounts);
}
