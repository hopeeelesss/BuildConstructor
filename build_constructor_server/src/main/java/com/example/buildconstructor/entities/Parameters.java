package com.example.buildconstructor.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "parameters")
@Data
public class Parameters {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "parameter_id")
    private Long parameterId;

    private Integer attackSpeed = 0;

    private Integer damage = 0;

    private Integer armor = 0;

    private Double physicalDamageResistance = 0D;

    private Double magicalDamageResistance = 0D;

    private Double vampirism = 0D;

    private String other;

    @JsonIgnore
    private String type;

    @JsonIgnore
    @OneToOne
    private Hero hero;

    @JsonIgnore
    @OneToOne
    private Item item;
}
