package com.example.productservice.controller;

import com.example.productservice.model.Item;
import com.example.productservice.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import com.example.productservice.dto.ItemDTO;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/items")
public class ItemController {

    private final ItemService itemService;

    @Autowired
    public ItemController(ItemService itemService) {
        this.itemService = itemService;
    }

    @GetMapping("/category/{categoryId}")
    public ResponseEntity<List<ItemDTO>> getItemsByCategory(@PathVariable Long categoryId) {
        List<Item> items = itemService.getItemsByCategory(categoryId);
        List<ItemDTO> itemDTOs = items.stream()
                .map(itemService::convertToItemDTO)
                .collect(Collectors.toList());
        return ResponseEntity.ok(itemDTOs);
    }

    @GetMapping("/category/{categoryId}/product-category/{productCategoryId}")
    public ResponseEntity<List<ItemDTO>> getItemsByProductCategory(
            @PathVariable Long categoryId,
            @PathVariable Long productCategoryId) {
        List<ItemDTO> items = itemService.getItemsByProductCategory(categoryId, productCategoryId);
        return ResponseEntity.ok(items);
    }

    @GetMapping("/category/{categoryId}/product-category/{productCategoryId}/item/{itemId}")
    public ResponseEntity<ItemDTO> getItemById(
            @PathVariable Long categoryId,
            @PathVariable Long productCategoryId,
            @PathVariable Long itemId) {
        ItemDTO item = itemService.getItemById(categoryId, productCategoryId, itemId);
        return ResponseEntity.ok(item);
    }
}