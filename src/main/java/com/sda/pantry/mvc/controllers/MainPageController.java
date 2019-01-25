package com.sda.pantry.mvc.controllers;

import com.sda.pantry.core.services.RecipeService;
import com.sda.pantry.dto.RecipeDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class MainPageController {

    private RecipeService recipeService;

    @Autowired
    public MainPageController(RecipeService recipeService) {
        this.recipeService = recipeService;
    }
@GetMapping("/main")
    public String prepareMainPage(Model model) {

        List<RecipeDTO> matchingRecipes = recipeService.getMatchingRecipes();
        model.addAttribute("matchingRecipes", matchingRecipes);

        return "main";
    }
}
