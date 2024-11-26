package com.example.productservice.dto;

import java.util.List;

public class CategoryDTO {
    private Long id;
    private String name;
    private List<ProductCategoryDTO> productCategories;

    // Constructors
    public CategoryDTO() {}

    public CategoryDTO(Long id, String name, List<ProductCategoryDTO> productCategories) {
        this.id = id;
        this.name = name;
        this.productCategories = productCategories;
    }

    // Getters and Setters
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

    public List<ProductCategoryDTO> getProductCategories() {
        return productCategories;
    }

    public void setProductCategories(List<ProductCategoryDTO> productCategories) {
        this.productCategories = productCategories;
    }
}
