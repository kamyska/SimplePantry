package com.sda.pantry.mvc.controllers;

import com.sda.pantry.core.services.UserService;
import com.sda.pantry.dto.UserDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class ShowAllUsersController {

    private UserService userService;

    @Autowired
    public ShowAllUsersController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/all")
    public String getHomePage(Model model) {
        List<UserDTO> userDTOS = userService.findAllUsers();
        if (userDTOS.isEmpty()){
            System.out.println("NIC NIE MA");
        } else {

            for (int i = 0; i < userDTOS.size(); i++) {
                System.out.println(userDTOS.get(i));

            }}
        model.addAttribute("users", userDTOS);
        return "allusers";
    }
}