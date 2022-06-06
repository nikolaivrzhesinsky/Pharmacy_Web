package com.example.pharmacy_web.controllers;

import com.example.pharmacy_web.models.User;
import com.example.pharmacy_web.services.ProductService;
//import com.example.pharmacy_web.services.PurchaseService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class PurchaseController {

    //private final PurchaseService purchaseService;
    private final ProductService productService;

    @GetMapping("/confirm payment/{id}")
    public String paymentConfirm(Principal principal, @PathVariable Long id, Model model){
        model.addAttribute("product", productService.getProductById(id));
        model.addAttribute("user", productService.getUserByPrincipal(principal));
        //model.addAttribute("purchase",purchaseService.createPurchase(id,principal));

        return "confirmPayment";
    }
}
