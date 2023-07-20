package com.example.demo.respository;

import com.example.demo.entity.Accounts;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AccountsRespository extends JpaRepository<Accounts,Integer> {
    Accounts findAccountsByUsernameAndAndPassword(String username,String password);

    Accounts findAccountsByUsername(String username);

    Accounts findAccountsByUsernameAndAndPasswordAndAndRole(String username,String password,String role);

}
