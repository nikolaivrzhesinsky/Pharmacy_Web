package com.example.pharmacy_web.repositories;

import com.example.pharmacy_web.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<Image, Long> {
}
