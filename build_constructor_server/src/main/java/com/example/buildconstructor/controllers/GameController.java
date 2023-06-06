package com.example.buildconstructor.controllers;

import com.example.buildconstructor.entities.Game;
import com.example.buildconstructor.services.GameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("admin/game")
public class GameController {
    @Autowired
    private GameService gameService;

    @GetMapping("list")
    public List<Game> list(){
        return gameService.list();
    }

    @PostMapping (value = "add", consumes = MediaType.APPLICATION_JSON_VALUE)
    public Game add(@RequestBody Game game){
        return gameService.add(game);
    }

    @PutMapping(value = "{id}/edit", consumes = MediaType.APPLICATION_JSON_VALUE)
    public Game edit(@PathVariable Long id, @RequestBody Game game){
        return gameService.edit(id, game);
    }

    @DeleteMapping("{id}/delete")
    public HttpStatus delete(@PathVariable Long id){
        return gameService.delete(id);
    }
}
