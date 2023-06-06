package com.example.buildconstructor.services;

import com.example.buildconstructor.entities.Item;
import com.example.buildconstructor.entities.Parameters;
import com.example.buildconstructor.repositories.ItemRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ItemService {
    @Autowired
    private ItemRepo itemRepo;

    public List<Item> list(){
        return itemRepo.findAll();
    }

    public Item add(Item item){
        item.getAttributes().setType("Item");
        item.getParameters().setType("Item");
        return itemRepo.save(item);
    }

    public Item edit(Long id, Item item){
        item.getAttributes().setType("Item");
        item.getParameters().setType("Item");
        item.setItemId(id);
        return itemRepo.save(item);
    }

    public HttpStatus delete(Long id){
        itemRepo.deleteById(id);
        return HttpStatus.OK;
    }

}
