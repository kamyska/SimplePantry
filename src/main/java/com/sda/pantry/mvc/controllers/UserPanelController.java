package com.sda.pantry.mvc.controllers;

import com.sda.pantry.core.services.UserService;
import com.sda.pantry.dto.UserDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class UserPanelController {

    private UserService userService;

    @Autowired
    public UserPanelController (UserService userService){this.userService = userService;}

    @GetMapping("/userpanel")
    public String getUserPanelPage(HttpSession httpSession, UserDTO userDTO, Model model){

        String newDTOEmail = userDTO.getEmail();
        String newsessionEmail= (String)httpSession.getAttribute("email");
        model.addAttribute("newDTOEmail", newDTOEmail);


        return "userpanel";
    }


    @PostMapping("/userpanel")
    public void newAccount(String email, String password, String name,
                      HttpSession session, HttpServletResponse response) throws IOException {

        userService.addNewUser(email, password, name);
        response.sendRedirect("/login");
    }
}
