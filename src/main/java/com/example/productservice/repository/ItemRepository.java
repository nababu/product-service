package com.example.productservice.repository;

import com.example.productservice.model.Item;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface ItemRepository extends JpaRepository<Item, Long> {
    // This method is already provided by JpaRepository
    Optional<Item> findById(Long id);

    // Update this method to match the join column name
    List<Item> findByProductCategoryId(Long productCategoryId);

    List<Item> findByProductCategoryCategoryIdAndProductCategoryId(Long categoryId, Long productCategoryId);

    Optional<Item> findByProductCategory_Category_IdAndProductCategory_IdAndId(Long categoryId, Long productCategoryId, Long id);
}
