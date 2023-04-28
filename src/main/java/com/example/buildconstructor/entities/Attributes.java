package com.example.buildconstructor.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "attributes")
@Data
public class Attributes {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "attributes_id")
    private Long attributeId;

    private Integer strength = 0;

    private Integer agility = 0;

    private Integer intelligence = 0;

    private Integer movespeed = 0;

    @JsonIgnore
    private String type;

    @JsonIgnore
    @OneToOne
    private Hero hero;

    @JsonIgnore
    @OneToOne
    private Item item;
}
