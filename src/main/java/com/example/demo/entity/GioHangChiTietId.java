package com.example.demo.entity;

import lombok.Getter;
import lombok.Setter;

import jakarta.persistence.Embeddable;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import java.io.Serializable;

@Embeddable
@Getter
@Setter
public class GioHangChiTietId implements Serializable {
    @ManyToOne
    @JoinColumn(name = "idGioHang",referencedColumnName = "id")
    private GioHang gioHang;
    @ManyToOne
    @JoinColumn(name = "idLaptop",referencedColumnName = "id")
    private Laptop laptop;

    public GioHangChiTietId() {

    }

    public GioHangChiTietId(GioHang gioHang, Laptop laptop) {
        this.gioHang = gioHang;
        this.laptop = laptop;
    }
}
