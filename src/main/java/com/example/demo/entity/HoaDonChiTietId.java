package com.example.demo.entity;

import jakarta.persistence.Embeddable;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.Getter;
import lombok.Setter;

@Embeddable
@Getter
@Setter
public class HoaDonChiTietId {
    @ManyToOne
    @JoinColumn(name = "idHoaDon",referencedColumnName = "id")
    private HoaDon hoaDon;
    @ManyToOne
    @JoinColumn(name = "idLaptop",referencedColumnName = "id")
    private Laptop laptop;

    public HoaDonChiTietId() {

    }

    public HoaDonChiTietId(HoaDon hoaDon, Laptop laptop) {
        this.hoaDon = hoaDon;
        this.laptop = laptop;
    }
}
