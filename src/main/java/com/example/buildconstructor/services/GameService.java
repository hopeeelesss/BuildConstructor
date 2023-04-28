package com.example.buildconstructor.services;

import com.example.buildconstructor.entities.Game;
import com.example.buildconstructor.repositories.GameRepo;
import lombok.NoArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@NoArgsConstructor
public class GameService {
    @Autowired
    private GameRepo gameRepo;

    public List<Game> list(){
        return gameRepo.findAll();
    }

    public Game add(Game game){
        return gameRepo.save(game);
    }

    public Game edit(Long id, Game game){
        Game updatedGame = gameRepo.getReferenceById(id);
        updatedGame.setName(game.getName());
        return gameRepo.save(updatedGame);
    }

    public HttpStatus delete(Long id){
        gameRepo.deleteById(id);
        return HttpStatus.OK;
    }
}
