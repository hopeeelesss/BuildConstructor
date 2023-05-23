package com.example.buildconstructor.controllers;

import com.example.buildconstructor.entities.Hero;
import com.example.buildconstructor.services.HeroService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("admin/hero")
public class HeroController {
    @Autowired
    private HeroService heroService;

    @GetMapping("list")
    public List<Hero> list(){
        return heroService.list();
    }

    @PostMapping(value = "add", consumes = MediaType.APPLICATION_JSON_VALUE)
    public Hero add(@RequestBody Hero hero){
        return heroService.add(hero);
    }

    @PutMapping(value = "{id}/edit", consumes = MediaType.APPLICATION_JSON_VALUE)
    public Hero edit(@PathVariable Long id, @RequestBody Hero hero){
        return heroService.edit(id, hero);
    }

    @DeleteMapping("{id}/delete")
    public HttpStatus delete(@PathVariable Long id){
        return heroService.delete(id);
    }

    @GetMapping("{name}")
    public Hero findById(@PathVariable String name){
        return heroService.findByName(name);
    }
}
