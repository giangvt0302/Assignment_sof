package com.example.demo.entity;


import lombok.*;

import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import java.io.Serializable;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Entity

@Table(name = "GioHangChiTiet")
public class GioHangChiTiet implements Serializable {
    @EmbeddedId
    private GioHangChiTietId id;
    private long soLuong;
}
