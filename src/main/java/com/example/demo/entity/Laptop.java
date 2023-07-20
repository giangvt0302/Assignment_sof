package com.example.demo.entity;


import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import jakarta.validation.constraints.DecimalMin;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;

import java.math.BigDecimal;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
@Table(name = "Laptop")
public class Laptop implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private Integer id;

    @NotBlank(message = "Please enter your's name")
    @Column(name = "Name")
    private String name;

    @NotBlank(message = "Please enter your's cpu")
    @Column(name = "CPU")
    private String cpu;


//    @Min(value=0, message="must be equal or greater than 0")
//    @Max(value=100, message="must be equal or less than 100")
    @Column(name = "Price")
    private Float price;


    @Column(name = "Quantity")
    private long quantity;

    @NotBlank(message = "Please enter your's brand")
    @Column(name = "Description")
    private String description;

//    ,referencedColumnName = "id"
//    @ManyToOne
//    @JoinColumn(name = "id_brand",referencedColumnName = "id")
//    private Brand brand;

    @ManyToOne
    @JoinColumn(name = "brand_id")
    private Brand brand;

    private String image;
}
