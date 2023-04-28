package com.example.buildconstructor.services;

import com.example.buildconstructor.entities.Ability;
import com.example.buildconstructor.entities.Hero;
import com.example.buildconstructor.repositories.AbilityRepo;
import com.example.buildconstructor.repositories.HeroRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HeroService {
    @Autowired
    private HeroRepo heroRepo;

    @Autowired
    private AbilityRepo abilityRepo;

    public List<Hero> list(){
        return heroRepo.findAll();
    }

    public Hero add(Hero hero){
        hero.getAttributes().setType("Hero");
        hero.getParameters().setType("Hero");
        return heroRepo.save(hero);
    }

    public Hero edit(Long id, Hero hero){
        hero.getAttributes().setType("Hero");
        hero.getParameters().setType("Hero");
        hero.setHeroId(id);
//        Hero oldHero = heroRepo.getReferenceById(id);
//        for(int i = 0; i < oldHero.getAbilities().size(); i++){
//            hero.getAbilities()
//                    .get(i)
//                    .setAbilityId(abilityRepo
//                            .getReferenceById(oldHero
//                                    .getAbilities()
//                                    .get(i)
//                                    .getAbilityId())
//                            .getAbilityId());
//        }
        return heroRepo.save(hero);
    }
    //TODO Исправить пересоздание абилок при изменении персонажа

    public HttpStatus delete(Long id){
        heroRepo.deleteById(id);
        return HttpStatus.OK;
    }
}
