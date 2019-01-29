package com.sda.pantry.mvc.controllers;

import com.sda.pantry.core.services.RecipeService;
import com.sda.pantry.data.model.Ingredient;
import com.sda.pantry.dto.InputWord;
import com.sda.pantry.dto.RecipeDTO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/")
public class InputController {
    private RecipeService recipeService;

    public InputController(RecipeService recipeService) {
        this.recipeService = recipeService;
    }

    @GetMapping
    public String prepareForm(Model model) {
        InputWord inputWord = new InputWord();
        model.addAttribute("inputWord", inputWord);

        return "index";
    }

    @PostMapping
    public String submitForm(Model model, @ModelAttribute InputWord inputWord) {
      //  model.addAttribute("name", ingredient.getName());
        List<RecipeDTO> matchingRecipes = recipeService.getMatchingRecipes(inputWord.getName());
        model.addAttribute("matchingRecipes", matchingRecipes);
        return "main";
    }


}
