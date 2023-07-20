package com.example.demo.entity;

import jakarta.persistence.*;
import lombok.*;


import java.io.Serializable;
import java.util.Date;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Builder
@Table(name = "HoaDon")
public class HoaDon implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "accounts_id", referencedColumnName = "id")
    private Accounts accounts;

    private String ma;
    private String trangThai;
    private Date ngayTao;
    private Date ngayThanhToan;
    private Long tongGia;

    public HoaDon(Accounts accounts, String ma, String trangThai, Date ngayTao, Date ngayThanhToan, Long tongGia) {
        this.accounts = accounts;
        this.ma = ma;
        this.trangThai = trangThai;
        this.ngayTao = ngayTao;
        this.ngayThanhToan = ngayThanhToan;
        this.tongGia = tongGia;
    }
}
