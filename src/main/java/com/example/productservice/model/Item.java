package com.example.productservice.model;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "items")
public class Item {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String description;
    private Double price;
    
    @Column(name = "image_url")
    private String imageUrl;

    @ManyToOne
    @JoinColumn(name = "product_category_id")
    private ProductCategory productCategory;
    // Constructors
    public Item() {}

    public Item(String name, String description, Double price, String imageUrl) {
        this.name = name;
        this.description = description;
        this.price = price;
        this.imageUrl = imageUrl;
    }

    public Item(String name, String description, Double price, String imageUrl, ProductCategory productCategory) {
        this.name = name;
        this.description = description;
        this.price = price;
        this.imageUrl = imageUrl;
        this.productCategory = productCategory;
    }

    // Getters and setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public ProductCategory getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(ProductCategory productCategory) {
        this.productCategory = productCategory;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    @Column(name = "mrp")
    private Double mrp;

    @Column(name = "offer_price")
    private Double offerPrice;

    @Column(name = "quantity_in_stock")
    private Integer quantityInStock;

    @Column(name = "min_quantity_per_consignee")
    private Integer minQuantityPerConsignee;

    @Column(name = "product_id")
    private String productId;

    @Column(name = "country_of_origin")
    private String countryOfOrigin;

    @Column(name = "local_content")
    private Integer localContent;

    @ManyToOne
    @JoinColumn(name = "seller_id")
    private Seller seller;

    // Getters and setters are handled by Lombok's @Data annotation
}