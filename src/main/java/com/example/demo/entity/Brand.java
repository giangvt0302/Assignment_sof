package com.example.demo.entity;

import lombok.*;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import java.io.Serializable;
import java.util.List;

@Builder
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter

@Table(name = "Brand")
public class Brand implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private Integer id;

//    @Unique(message="duplicate message")
    @NotBlank(message = "Please enter your's ma")
    @Column
    private String ma;

    @NotBlank(message = "Please enter your's name")
    @Column
    private String name;

//    @OneToMany(mappedBy = "brand")
//    private List<Laptop> laptops;

}