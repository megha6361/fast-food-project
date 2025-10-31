package com.xworkz.Project.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;


@Entity
@Table(name = "dishes")
@Data
@NoArgsConstructor
@AllArgsConstructor
@NamedQuery(name = "getDishes", query = "select a from DishesEntity a")
public class DishesEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private String description;

    private Double price;

    private String category;

    private String imageUrl;

    private Boolean available;

    private String buyUrl; // New field for purchase platform URL
}