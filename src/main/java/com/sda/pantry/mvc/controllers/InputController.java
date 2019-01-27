package com.sda.pantry.mvc.controllers;

import com.sda.pantry.core.services.RecipeService;
import com.sda.pantry.data.model.Ingredient;
import com.sda.pantry.dto.RecipeDTO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class InputController {
    private RecipeService recipeService;

    public InputController(RecipeService recipeService) {
        this.recipeService = recipeService;
    }

    @GetMapping("/new")
    public String prepareForm(Model model) {
        Ingredient ingredient = new Ingredient();
        model.addAttribute("ingredient", ingredient);

        return "input";
    }

    @PostMapping("/new")
    public String submitForm(Model model, @ModelAttribute Ingredient ingredient) {
      //  model.addAttribute("name", ingredient.getName());
        List<RecipeDTO> matchingRecipes = recipeService.getMatchingRecipes(ingredient.getName());
        model.addAttribute("matchingRecipes", matchingRecipes);
        return "main";
    }

//
//    @GetMapping("/new")
//    public String prepareMainPage(Model model, ) {
//
////
////    List<RecipeDTO> matchingRecipes = recipeService.getMatchingRecipes();
////    model.addAttribute("matchingRecipes", matchingRecipes);
//
//        return "redirect:/main";
//    }

}
