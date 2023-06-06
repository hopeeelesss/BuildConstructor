package com.example.buildconstructor.repositories;

import com.example.buildconstructor.entities.Ability;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AbilityRepo extends JpaRepository<Ability, Long> {
}
