package com.example.pharmacy_web.repositories;

import com.example.pharmacy_web.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {
    @Query("select p from Product p where p.title = ?1")
    List<Product> findByTitle(String title);
    @Query("select p from Product p where p.title = ?1 and p.city = ?2")
    List<Product> findByTitleAndCity(String title, String city);
    @Query("select p from Product p where p.title = ?1 or p.city = ?2")
    List<Product> findByTitleOrCity(String title, String city);
    List<Product> findByCity(String city);
}
