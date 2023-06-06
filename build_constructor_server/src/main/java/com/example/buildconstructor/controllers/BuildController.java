package com.example.buildconstructor.controllers;

import com.example.buildconstructor.entities.Build;
import com.example.buildconstructor.services.BuildService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("build")
public class BuildController {
    @Autowired
    private BuildService buildService;

    @GetMapping("list")
    public List<Build> list(){
        return buildService.list();
    }

    @PostMapping(value = "add", consumes = MediaType.APPLICATION_JSON_VALUE)
    public Build add(@RequestBody Build build){
        return buildService.add(build);
    }

    @PutMapping(value = "{id}/edit", consumes = MediaType.APPLICATION_JSON_VALUE)
    public Build edit(@PathVariable Long id, @RequestBody Build build){
        return buildService.edit(id, build);
    }

    @DeleteMapping("{id}/delete")
    public HttpStatus delete(@PathVariable Long id){
        return buildService.delete(id);
    }
}
