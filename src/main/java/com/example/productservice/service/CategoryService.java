package com.example.productservice.service;

import com.example.productservice.dto.CategoryDTO;
import com.example.productservice.dto.ProductCategoryDTO;
import com.example.productservice.dto.ItemDTO;
import com.example.productservice.model.Category;
import com.example.productservice.model.ProductCategory;
import com.example.productservice.model.Item;
import com.example.productservice.repository.CategoryRepository;
import com.example.productservice.repository.ProductCategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;
import java.util.stream.Collectors;
import java.math.BigDecimal;

@Service
public class CategoryService {

	private final CategoryRepository categoryRepository;
	private final ProductCategoryRepository productCategoryRepository;

	private static final Logger logger = LoggerFactory.getLogger(CategoryService.class);

	@Autowired
	public CategoryService(CategoryRepository categoryRepository, ProductCategoryRepository productCategoryRepository) {
		this.categoryRepository = categoryRepository;
		this.productCategoryRepository = productCategoryRepository;
	}

	public List<CategoryDTO> getAllCategories() {
		List<Category> categories = categoryRepository.findAll();
		return categories.stream()
				.map(this::convertToCategoryDTO)
				.collect(Collectors.toList());
	}

	public ProductCategoryDTO getProductCategoryDTO(Long categoryId, Long productCategoryId) {
		ProductCategory productCategory = productCategoryRepository.findByCategoryIdAndId(categoryId, productCategoryId)
				.orElseThrow(() -> new RuntimeException("ProductCategory not found"));
		return convertToProductCategoryDTO(productCategory);
	}

	private CategoryDTO convertToCategoryDTO(Category category) {
		CategoryDTO categoryDTO = new CategoryDTO();
		categoryDTO.setId(category.getId());
		categoryDTO.setName(category.getName());
		categoryDTO.setProductCategories(category.getProductCategories().stream()
				.map(this::convertToProductCategoryDTO)
				.collect(Collectors.toList()));
		return categoryDTO;
	}

	private ProductCategoryDTO convertToProductCategoryDTO(ProductCategory productCategory) {
		ProductCategoryDTO productCategoryDTO = new ProductCategoryDTO();
		productCategoryDTO.setId(productCategory.getId());
		productCategoryDTO.setName(productCategory.getName());
		productCategoryDTO.setItems(productCategory.getItems().stream()
				.map(this::convertToItemDTO)
				.collect(Collectors.toList()));
		return productCategoryDTO;
	}

	private ItemDTO convertToItemDTO(Item item) {
		logger.debug("Converting Item to ItemDTO: {}", item);
		ItemDTO itemDTO = new ItemDTO();
		itemDTO.setId(item.getId());
		itemDTO.setName(item.getName());
		itemDTO.setDescription(item.getDescription());
		itemDTO.setPrice(BigDecimal.valueOf(item.getPrice()));
		itemDTO.setImageUrl(item.getImageUrl());
		logger.debug("Converted ItemDTO: {}", itemDTO);
		return itemDTO;
	}
}
