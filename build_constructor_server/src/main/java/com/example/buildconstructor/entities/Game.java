package com.example.buildconstructor.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "games")
@Data
@NoArgsConstructor
public class Game {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "game_id")
    private Long gameId;

    private String name;

    @JsonIgnore
    @OneToOne
    private UserBuildStorage userStorage;

    public Game(String name) {
        this.name = name;
    }
}
