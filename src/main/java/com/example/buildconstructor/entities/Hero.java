package com.example.buildconstructor.entities;

import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Entity
@Table(name = "heroes")
@Data
public class Hero {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "hero_id")
    private Long heroId;

    private String name;

    @OneToOne(cascade=CascadeType.ALL)
    @JoinColumn(name = "attributes_id")
    private Attributes attributes;

    @OneToOne(cascade=CascadeType.ALL)
    @JoinColumn(name = "parameters_id")
    private Parameters parameters;

    @OneToMany(cascade=CascadeType.ALL)
    private List<Ability> abilities;
}
