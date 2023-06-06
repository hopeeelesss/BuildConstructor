package com.example.buildconstructor.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.Data;

import java.util.List;
import java.util.Set;

@Entity
@Table(name = "users")
@Data
public class User{
    @Id
    @Column(name = "user_id")
    private Long userId;

    private Integer serviceId;

    private String login;

    @Enumerated(EnumType.STRING)
    private Role role;

    @JsonIgnore
    @OneToMany
    private List<UserBuildStorage> userStorage;

}
