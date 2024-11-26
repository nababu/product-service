package com.example.productservice.service;

import com.example.productservice.model.Item;
import com.example.productservice.repository.ItemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.productservice.dto.ItemDTO;
import com.example.productservice.dto.SellerDTO;
import java.math.BigDecimal;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class ItemService {

    private final ItemRepository itemRepository;

    @Autowired
    public ItemService(ItemRepository itemRepository) {
        this.itemRepository = itemRepository;
    }

    public Optional<Item> getItemById(Long itemId) {
        return itemRepository.findById(itemId);
    }

    public List<Item> getItemsByCategory(Long categoryId) {
        return itemRepository.findByProductCategoryId(categoryId);
    }

    public ItemDTO convertToItemDTO(Item item) {
        ItemDTO itemDTO = new ItemDTO();
        itemDTO.setId(item.getId());
        itemDTO.setName(item.getName());
        itemDTO.setDescription(item.getDescription());
        itemDTO.setPrice(BigDecimal.valueOf(item.getPrice()));
        itemDTO.setImageUrl(item.getImageUrl());
        itemDTO.setMrp(item.getMrp());
        itemDTO.setOfferPrice(item.getOfferPrice());
        itemDTO.setQuantityInStock(item.getQuantityInStock());
        itemDTO.setMinQuantityPerConsignee(item.getMinQuantityPerConsignee());
        itemDTO.setProductId(item.getProductId());
        itemDTO.setCountryOfOrigin(item.getCountryOfOrigin());
        itemDTO.setLocalContent(item.getLocalContent());
        
        if (item.getSeller() != null) {
            SellerDTO sellerDTO = new SellerDTO();
            sellerDTO.setId(item.getSeller().getId());
            sellerDTO.setName(item.getSeller().getName());
            sellerDTO.setIsVerifiedByOEM(item.getSeller().getIsVerifiedByOEM());
            sellerDTO.setIsCatalogueVerifiedByOEM(item.getSeller().getIsCatalogueVerifiedByOEM());
            sellerDTO.setSellerExcellenceRating(item.getSeller().getSellerExcellenceRating());
            itemDTO.setSeller(sellerDTO);
        }
        
        return itemDTO;
    }

    public List<ItemDTO> getItemsByProductCategory(Long categoryId, Long productCategoryId) {
        List<Item> items = itemRepository.findByProductCategoryCategoryIdAndProductCategoryId(categoryId, productCategoryId);
        return items.stream()
                .map(this::convertToItemDTO)
                .collect(Collectors.toList());
    }

    public ItemDTO getItemById(Long categoryId, Long productCategoryId, Long itemId) {
        Item item = itemRepository.findByProductCategory_Category_IdAndProductCategory_IdAndId(categoryId, productCategoryId, itemId)
                .orElseThrow(() -> new RuntimeException("Item not found"));
        return convertToItemDTO(item);
    }
}