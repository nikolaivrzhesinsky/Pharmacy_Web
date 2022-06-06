package com.example.pharmacy_web.repositories;

import com.example.pharmacy_web.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface UserRepository extends JpaRepository<User, Long> {
    @Query("select u from User u where u.email = ?1")
    User findByEmail(String email);

    @Query("select u from User u where u.activationCode = ?1")
    User findByActivationCode(String code);
}
