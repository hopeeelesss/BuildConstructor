package com.example.buildconstructor.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Entity
@Table(name = "items")
@Data
public class Item {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "item_id")
    private Long itemId;

    private String name;

    @OneToOne(cascade=CascadeType.ALL)
    @JoinColumn(name = "attributes_id")
    private Attributes attributes;

    @OneToOne(cascade=CascadeType.ALL)
    @JoinColumn(name = "parameters_id")
    private Parameters parameters;

    @JsonIgnore
    @ManyToMany(cascade=CascadeType.ALL)
    private List<Build> build;
}
