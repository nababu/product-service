package com.example.productservice.controller;

import com.example.productservice.dto.CategoryDTO;
import com.example.productservice.dto.ProductCategoryDTO;
import com.example.productservice.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/categories")
public class CategoryController {

    private final CategoryService categoryService;

    @Autowired
    public CategoryController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    @GetMapping
    public List<CategoryDTO> getAllCategories() {
        return categoryService.getAllCategories();
    }

    @GetMapping("/{categoryId}/product-categories/{productCategoryId}")
    public ResponseEntity<ProductCategoryDTO> getProductCategory(
            @PathVariable Long categoryId,
            @PathVariable Long productCategoryId) {
        ProductCategoryDTO productCategory = categoryService.getProductCategoryDTO(categoryId, productCategoryId);
        return ResponseEntity.ok(productCategory);
    }
}
