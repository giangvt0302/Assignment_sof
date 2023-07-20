package com.example.demo.respository;

import com.example.demo.entity.HoaDon;
import com.example.demo.entity.HoaDonChiTiet;
import com.example.demo.entity.HoaDonChiTietId;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface HoaDonChiTietRepository extends JpaRepository<HoaDonChiTiet, HoaDonChiTietId> {
    @Query("SELECT hd from HoaDonChiTiet hd where hd.hoaDonChiTietId.hoaDon = ?1")
    List<HoaDonChiTiet> findByIdHoaDon(HoaDon hd);
}
