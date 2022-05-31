package com.example.pharmacy_web.controllers;

import com.example.pharmacy_web.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.security.Principal;

@RequiredArgsConstructor
@Controller
public class MainController {

    private final UserService userService;

    @GetMapping("/")
    public String mainPage(Principal principal, Model model){
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "main";
    }
}
