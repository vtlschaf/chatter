package com.example.chatter2.service;

import com.example.chatter2.domain.User;
import com.example.chatter2.repos.UserRepo;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.util.List;

@Service
public class PasswordMigrationService {

    private final UserRepo userRepo;
    private final BCryptPasswordEncoder passwordEncoder;

    public PasswordMigrationService(UserRepo userRepo) {
        this.userRepo = userRepo;
        this.passwordEncoder = new BCryptPasswordEncoder();
    }

    @PostConstruct  // Запустится при старте приложения
    public void migratePasswords() {
        List<User> users = userRepo.findAll();
        for (User user : users) {
            // Если пароль не в формате BCrypt (начинается не с "$2a$")
            if (!user.getPassword().startsWith("$2a$")) {
                String encodedPassword = passwordEncoder.encode(user.getPassword());
                user.setPassword(encodedPassword);
                userRepo.save(user);
            }
        }
    }
}