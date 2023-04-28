package com.example.buildconstructor.entities;

import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Entity
@Table(name = "user_storage")
@Data
public class UserBuildStorage {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "storage_id")
    private Long storageId;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    private String name;

    @OneToMany
    private List<Build> build;

    @OneToOne
    @JoinColumn(name = "game_id")
    private Game game;
}
