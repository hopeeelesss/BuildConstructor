package com.example.buildconstructor.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@Table(name = "builds")
@Data
public class Build {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "build_id")
    private Long buildId;

    private String name;

    @OneToOne
    @JoinColumn(name = "hero_id")
    private Hero hero;

    @ManyToMany
    @JoinTable(name = "item_build",
            joinColumns = { @JoinColumn(name = "build_id")},
            inverseJoinColumns = { @JoinColumn(name = "item_id")})
    private List<Item> slots;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "storage_id")
    private UserBuildStorage userStorage;
}
