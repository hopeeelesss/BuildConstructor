package com.example.buildconstructor.repositories;

import com.example.buildconstructor.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository<User, Long> {
    User findUserByLogin(String login);
}
