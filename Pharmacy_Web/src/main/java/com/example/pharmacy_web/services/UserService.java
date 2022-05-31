package com.example.pharmacy_web.services;

import antlr.StringUtils;
import com.example.pharmacy_web.models.User;
import com.example.pharmacy_web.models.enums.Role;
import com.example.pharmacy_web.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.security.Principal;
import java.util.*;
import java.util.stream.Collectors;

@Service
@Slf4j
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final EmailSenderService mailSender;

    public boolean createUser(User user) {
        String email = user.getEmail();
        if (userRepository.findByEmail(email) != null) return false;
        user.setActive(false);
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.getRoles().add(Role.ROLE_USER);
        user.setBalance(1000);
        user.setActivationCode(UUID.randomUUID().toString());


        if(!(user.getEmail().isEmpty())){
            String message=String.format(
                    "Hello, %s! \n" +
                            "Welcome to Pharmacy Web. Please, visit next link: http://localhost:8081/activate/%s",
                    user.getUsername(),
                    user.getActivationCode()
            );
            mailSender.sendEmail(user.getEmail(), "Activation code", message);
        }
        log.info("Saving new User with email: {}", email);
        userRepository.save(user);
        return true;
    }

    public boolean activateUser(String code) {
        log.info("Activate block is working");
        User user = userRepository.findByActivationCode(code);

        if (user == null) {
            return false;
        }
        user.setActivationCode("none");
        user.setActive(true);
        userRepository.save(user);
        return true;
    }

    public List<User> list() {
        return userRepository.findAll();
    }

    public void banUser(Long id) {
        User user = userRepository.findById(id).orElse(null);
        if (user != null) {
            if (user.isActive()) {
                user.setActive(false);
                log.info("Ban user with id = {}; email: {}", user.getId(), user.getEmail());
            } else {
                user.setActive(true);
                log.info("Unban user with id = {}; email: {}", user.getId(), user.getEmail());
            }
        }
        userRepository.save(user);
    }

    public void changeUserRoles(User user, Map<String, String> form) {
        Set<String> roles = Arrays.stream(Role.values())
                .map(Role::name)
                .collect(Collectors.toSet());
        user.getRoles().clear();
        for (String key : form.keySet()) {
            if (roles.contains(key)) {
                user.getRoles().add(Role.valueOf(key));
            }
        }
        userRepository.save(user);
    }

    public User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }

    public void updateUser(Principal principal, String name, String phoneNumber){

        User user=getUserByPrincipal(principal);
        user.setName(name);
        user.setPhoneNumber(phoneNumber);

        userRepository.save(user);
    }

//    public String checkBalance(Principal principal){
//
//        User user=getUserByPrincipal(principal);
//        return user.getBalance().toString();
//    }
}
