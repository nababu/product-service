package com.example.productservice.dto;

public class SellerDTO {
    private Long id;
    private String name;
    private Boolean isVerifiedByOEM;
    private Boolean isCatalogueVerifiedByOEM;
    private Double sellerExcellenceRating;

    // Constructors
    public SellerDTO() {}

    public SellerDTO(Long id, String name, Boolean isVerifiedByOEM, Boolean isCatalogueVerifiedByOEM, Double sellerExcellenceRating) {
        this.id = id;
        this.name = name;
        this.isVerifiedByOEM = isVerifiedByOEM;
        this.isCatalogueVerifiedByOEM = isCatalogueVerifiedByOEM;
        this.sellerExcellenceRating = sellerExcellenceRating;
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

    public Boolean getIsVerifiedByOEM() {
        return isVerifiedByOEM;
    }

    public void setIsVerifiedByOEM(Boolean isVerifiedByOEM) {
        this.isVerifiedByOEM = isVerifiedByOEM;
    }

    public Boolean getIsCatalogueVerifiedByOEM() {
        return isCatalogueVerifiedByOEM;
    }

    public void setIsCatalogueVerifiedByOEM(Boolean isCatalogueVerifiedByOEM) {
        this.isCatalogueVerifiedByOEM = isCatalogueVerifiedByOEM;
    }

    public Double getSellerExcellenceRating() {
        return sellerExcellenceRating;
    }

    public void setSellerExcellenceRating(Double sellerExcellenceRating) {
        this.sellerExcellenceRating = sellerExcellenceRating;
    }
}
