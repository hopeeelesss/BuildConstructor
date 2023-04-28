package com.example.buildconstructor.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;

@Entity
@Table(name = "abilities")
@Data
public class Ability {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ability_id")
    private Long abilityId;

    private String name;

    private String info;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "hero_id")
    private Hero hero;
}
