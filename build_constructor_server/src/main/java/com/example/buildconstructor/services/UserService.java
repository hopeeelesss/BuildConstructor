package com.example.buildconstructor.services;

import com.example.buildconstructor.entities.Role;
import com.example.buildconstructor.entities.User;
import com.example.buildconstructor.repositories.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    private UserRepo userRepo;

//    public void register(OAuth2User user){
//        User checkUser= new User();
//        if(userRepo.findUserByLogin(
//                (String) user.getAttributes().
//                        get("login"))==null){
//            checkUser.setLogin((String) user.getAttributes().
//                    get("login"));
//            checkUser.setServiceId((Integer) user.getAttributes().
//                    get("id"));
//            checkUser.setUserId(Long.valueOf(user.getName()));
//            checkUser.setRole(Role.USER);
//            userRepo.save(checkUser);
//        }
//    }
}
