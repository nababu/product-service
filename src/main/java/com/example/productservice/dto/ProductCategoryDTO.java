package com.example.productservice.dto;

import java.util.List;

public class ProductCategoryDTO {
    private Long id;
    private String name;
    private List<ItemDTO> items;

    // Constructors
    public ProductCategoryDTO() {}

    public ProductCategoryDTO(Long id, String name, List<ItemDTO> items) {
        this.id = id;
        this.name = name;
        this.items = items;
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

    public List<ItemDTO> getItems() {
        return items;
    }

    public void setItems(List<ItemDTO> items) {
        this.items = items;
    }
}
