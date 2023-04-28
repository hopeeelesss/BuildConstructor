package com.example.buildconstructor.repositories;

import com.example.buildconstructor.entities.UserBuildStorage;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserBuildStorageRepo extends JpaRepository<UserBuildStorage, Long> {
}
