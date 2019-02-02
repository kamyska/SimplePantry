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
public class LoginController {


    private UserService userService;

    @Autowired
    public LoginController(UserService userService){this.userService = userService;}

    @GetMapping("/login")
    public String getLoginPage(Model model, HttpSession httpSession){
        //UserDTO user = new UserDTO();
        //model.addAttribute("firstUserModelEmail", user.getEmail());
        //model.addAttribute("UserDTO", user);
        //httpSession.setAttribute("firstUserSessionEmail", user.getEmail());
        return "login";
    }


    @PostMapping("/login")
    public void login(String email, String password,
                      HttpSession session, HttpServletResponse response) throws IOException {
        boolean validCredentials = userService.checkCredentials(email, password);
        if (!validCredentials) {
            response.sendError(401, "Błędne dane logowania");
            return;
        }

        UserDTO user = userService.getUserByEmail(email, password);
        session.setAttribute("email",user.getEmail());
        //session.setAttribute("user", user);
        response.sendRedirect("/");
    }


    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }

//      dzialajacy pseudo login
//    @PostMapping("/login")
//    public String loginInfo(HttpSession session, String email, String password, @ModelAttribute UserDTO userDTO) throws IOException {
//        //UserDTO user = new UserDTO();
//        userDTO.setEmail(email);
//        //LoggedUserDTO user = userService.getUserByEmail(email, password);
//        //model.addAttribute("user", user);
//        session.setAttribute("email", email);
//        //userService.addNewUser(email, password);
//          response.sendRedirect("/");  //zamiast return
//        return "homepage";
//    }



}
