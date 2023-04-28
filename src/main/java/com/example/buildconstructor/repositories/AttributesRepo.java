package com.example.buildconstructor.repositories;

import com.example.buildconstructor.entities.Attributes;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AttributesRepo extends JpaRepository<Attributes, Long> {
}
