package com.example.pharmacy_web.services;

import com.example.pharmacy_web.models.Purchase;
import com.example.pharmacy_web.models.User;
import com.example.pharmacy_web.repositories.PurchaseRepository;
import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.security.Principal;
import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor

public class PurchaseService {

    private final PurchaseRepository purchaseRepository;
    private final ProductService productService;

    @Transactional
    public Purchase createPurchase(Long id, Principal principal){

        Purchase purchase= new Purchase();
        purchase.setUser(productService.getUserByPrincipal(principal));
        purchase.setProduct(productService.getProductById(id));
        purchase.setActivationCode(UUID.randomUUID().toString());
        purchase.setStatus(true);
        purchase.getUser().setBalance(purchase.getUser().getBalance()-
                purchase.getProduct().getPrice());
        purchaseRepository.save(purchase);

        return purchase;
    }

    public List<Purchase> purchaseList(Principal principal){
        return  productService.getUserByPrincipal(principal).getPurchases();
    }

}
