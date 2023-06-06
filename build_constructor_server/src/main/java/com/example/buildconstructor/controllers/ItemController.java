package com.example.buildconstructor.controllers;

import com.example.buildconstructor.entities.Item;
import com.example.buildconstructor.services.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("admin/item")
public class ItemController {
    @Autowired
    private ItemService itemService;

    @GetMapping("list")
    public List<Item> list(){
        return itemService.list();
    }

    @PostMapping(value = "add", consumes = MediaType.APPLICATION_JSON_VALUE)
    public Item add(@RequestBody Item item){
        return itemService.add(item);
    }

    @PutMapping(value = "{id}/edit", consumes = MediaType.APPLICATION_JSON_VALUE)
    public Item edit(@PathVariable Long id, @RequestBody Item item){
        return itemService.edit(id, item);
    }

    @DeleteMapping("{id}/delete")
    public HttpStatus delete(@PathVariable Long id){
        return itemService.delete(id);
    }
}
