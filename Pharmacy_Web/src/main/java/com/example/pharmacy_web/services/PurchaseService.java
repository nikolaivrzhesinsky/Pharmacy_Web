package com.example.pharmacy_web.services;

import com.example.pharmacy_web.models.Purchase;
import com.example.pharmacy_web.models.User;
import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.security.Principal;
import java.util.UUID;

@Service
@RequiredArgsConstructor

public class PurchaseService {


    private final ProductService productService;

    public Purchase createPurchase(Long id, Principal principal){
        Purchase purchase= new Purchase();
        purchase.setUser(productService.getUserByPrincipal(principal));
        purchase.setProduct(productService.getProductById(id));
        purchase.setActivationCode(UUID.randomUUID().toString());

        return purchase;
    }

}
