package com.example.buildconstructor.services;

import com.example.buildconstructor.entities.Build;
import com.example.buildconstructor.repositories.BuildRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BuildService {
    @Autowired
    private BuildRepo buildRepo;

    public List<Build> list(){
        return buildRepo.findAll();
    }

    public Build add(Build build){
        return buildRepo.save(build);
    }

    public Build edit(Long id, Build build){
        build.setBuildId(id);
        return buildRepo.save(build);
    }

    public HttpStatus delete(Long id){
        buildRepo.deleteById(id);
        return HttpStatus.OK;
    }
}
