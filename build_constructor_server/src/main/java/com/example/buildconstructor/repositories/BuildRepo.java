package com.example.buildconstructor.repositories;

import com.example.buildconstructor.entities.Build;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BuildRepo extends JpaRepository<Build, Long> {
}
