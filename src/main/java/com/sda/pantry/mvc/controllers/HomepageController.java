package com.sda.pantry.mvc.controllers;

import com.sda.pantry.core.services.RecipeService;
import com.sda.pantry.core.services.UserService;
import com.sda.pantry.dto.IngredientDTO;
import com.sda.pantry.dto.RecipeDTO;
import com.sda.pantry.dto.UserDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class HomepageController {

    private UserService userService;
    private RecipeService recipeService;

    @Autowired
    public HomepageController(UserService userService, RecipeService recipeService) {
        this.recipeService = recipeService;
        this.userService = userService;
    }

    @GetMapping("/")
    public String getHomePage(HttpSession session, Model model, UserDTO userDTO){

//            String userEmailDTO = userDTO.getEmail();
//            String userEmailSession = (String)session.getAttribute("email");
//            model.addAttribute("userEmailDTO",userEmailDTO);
//            model.addAttribute("userEmailSession",userEmailSession);


        IngredientDTO ingredient = new IngredientDTO();
        model.addAttribute("ingredient", ingredient);
        return "homepage";
    }

    @PostMapping("/")
    public String submitForm(Model model, IngredientDTO ingredient) {
        //model.addAttribute("name", ingredient.getName());
        List<RecipeDTO> matchingRecipes = recipeService.getMatchingRecipes(ingredient.getName());
        model.addAttribute("matchingRecipes", matchingRecipes);
        return "result";
    }

}
