package com.example.demo.entity;

//import jakarta.persistence.*;
//import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import java.io.Serializable;

@Entity
@Table(name="accounts")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Accounts implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private Integer id;

    @NotBlank(message = "Please enter your's username")
    @Column(name = "Username")
    private String username;

    @NotBlank(message = "Please enter your's password")
    @Column(name = "Password")
    private String password;

    @Column(name = "role",columnDefinition = "bit")
    private boolean role;


}
