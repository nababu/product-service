package com.example.productservice.model;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "sellers")
public class Seller {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    @Column(name = "is_verified_by_oem")
    private Boolean isVerifiedByOEM;

    @Column(name = "is_catalogue_verified_by_oem")
    private Boolean isCatalogueVerifiedByOEM;

    @Column(name = "seller_excellence_rating")
    private Double sellerExcellenceRating;

    // Constructors, getters, and setters are handled by Lombok's @Data annotation
}
