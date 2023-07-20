package com.example.demo.respository;


import com.example.demo.entity.GioHang;
import com.example.demo.entity.GioHangChiTiet;
import com.example.demo.entity.GioHangChiTietId;
import com.example.demo.entity.Laptop;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


import java.util.List;

@Repository
@Transactional
public interface GioHangChiTietRepository extends JpaRepository<GioHangChiTiet, GioHangChiTietId> {
    List<GioHangChiTiet> findByIdGioHang(GioHang gioHang);

    GioHangChiTiet findByIdLaptopAndIdGioHang(Laptop laptop,GioHang gioHang);

    GioHangChiTiet findByIdLaptop(Laptop laptop);

    @Modifying
    @Query("DELETE FROM GioHangChiTiet gh WHERE gh.id.gioHang = ?1")
    int deleteByIdGioHang(GioHang gh);
}
