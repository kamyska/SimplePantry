package com.sda.pantry.data.model;

import javax.persistence.*;

@Entity
@Table (name = "recipes")
public class Recipe {

    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    @Column (name = "id_recipe")
    private Long id;

    @Column (name = "r_name")
    private String name;

    @Column (name = "r_description")
    private String description;

    @Column (name = "r_type")
    private String type;
}
