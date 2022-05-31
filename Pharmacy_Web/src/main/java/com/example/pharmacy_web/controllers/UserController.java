package com.example.pharmacy_web.controllers;

import com.example.pharmacy_web.models.User;
import com.example.pharmacy_web.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;

    @GetMapping("/login")
    public String login(Principal principal, Model model) {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "login";
    }

    @GetMapping("/profile")
    public String profile(Principal principal,
                          Model model) {
        User user = userService.getUserByPrincipal(principal);
        model.addAttribute("user", user);
        return "profile";
    }

    @GetMapping("/registration")
    public String registration(Principal principal, Model model) {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "registration";
    }


    @PostMapping("/registration")
    public String createUser(User user, Model model) {
        if (!userService.createUser(user)) {
            model.addAttribute("errorMessage", "Пользователь с email: " + user.getEmail() + " уже существует");
            return "registration";
        }
        return "redirect:/login";
    }

    @GetMapping("/activate/{code}")
    public String activate(Model model, @PathVariable String code,Principal principal) {

        model.addAttribute("user", userService.getUserByPrincipal(principal));
        boolean isActivated = userService.activateUser(code);

        if (isActivated) {
            model.addAttribute("message", "User successfully activated");
        } else {
            model.addAttribute("message", "Activation code is not found!");
        }

        return "login";
    }

    @PostMapping("/user/update")
    public  String saveUpdate(Principal principal,@RequestParam(name = "name", required = false) String name,
                              @RequestParam(name = "phoneNumber", required = false) String phoneNumber){
        userService.updateUser(principal,name,phoneNumber);
        return "redirect:/profile";
    }

    @GetMapping("/user/balance")
    public String getBalance(Principal principal, Model model){

        User user= userService.getUserByPrincipal(principal);
        model.addAttribute("user",user);
        return "balance";
    }

//    @GetMapping("/user/{user}")
//    public String userInfo(@PathVariable("user") User user, Model model, Principal principal) {
//        model.addAttribute("user", user);
//        model.addAttribute("userByPrincipal", userService.getUserByPrincipal(principal));
//        model.addAttribute("products", user.getProducts());
//        return "user-info";
//    }
}
