package com.example.buildconstructor.repositories;

import com.example.buildconstructor.entities.Hero;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HeroRepo extends JpaRepository<Hero, Long> {
    Hero findByName(String name);
}
