package com.example.buildconstructor.repositories;

import com.example.buildconstructor.entities.Parameters;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ParametersRepo extends JpaRepository<Parameters, Long> {
}
