package com.example.demo.entity;

import lombok.*;
import org.hibernate.annotations.GenericGenerator;

import jakarta.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(name = "gio_hang")
public class GioHang implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private Integer id;

    @OneToOne
    @JoinColumn(name = "id_accounts")
    private Accounts accounts;

    @OneToMany()
    @JoinColumn(name = "idGioHang",referencedColumnName = "id")
    private List<GioHangChiTiet> gioHangChiTiet;
    private Date ngayTao;
}
