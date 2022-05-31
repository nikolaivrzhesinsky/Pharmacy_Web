package com.example.pharmacy_web.repositories;

import com.example.pharmacy_web.models.Purchase;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PurchaseRepository extends JpaRepository<Purchase,Long> {
}
