package com.example.demo.respository;

import com.example.demo.entity.HoaDon;
import com.example.demo.entity.HoaDonChiTiet;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Transactional
public interface HoaDonRepository extends JpaRepository<HoaDon, String> {
    @Modifying
    @Query("SELECT hdct FROM HoaDon h join HoaDonChiTiet hdct on h.id = hdct.hoaDonChiTietId.hoaDon.id " +
            "where h.id = ?1")
    List<HoaDonChiTiet> getLaptopByIdOrder(Integer id);

//    List<HoaDonChiTiet> getLaptopByIdOrder(Integer id);

    @Query("SELECT h FROM Accounts a " +
            "join HoaDon h on a.id = h.accounts.id " +
            "where a.id = ?1")
    List<HoaDon> getOrderByAccountsId(Integer id);
}
