//package com.sda.pantry.mvc.controllers;
//
//import com.sda.pantry.core.services.RecipeService;
//import com.sda.pantry.data.model.Ingredient;
//import com.sda.pantry.dto.IngredientDTO;
//import com.sda.pantry.dto.RecipeDTO;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PostMapping;
//
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.util.List;
//
//@Controller
//public class MainPageController {
//
//    private RecipeService recipeService;
//
//    @Autowired
//    public MainPageController(RecipeService recipeService) {
//        this.recipeService = recipeService;
//    }
//@GetMapping("/result")
//    public String prepareMainPage(Model model, @ModelAttribute String name) {
//    System.err.println(name+ " jest?");
//     List<RecipeDTO> matchingRecipes = recipeService.getMatchingRecipes(name);
//        model.addAttribute("matchingRecipes", matchingRecipes);
////
////    List<RecipeDTO> matchingRecipes = recipeService.getMatchingRecipes();
////    model.addAttribute("matchingRecipes", matchingRecipes);
//
//    return "main";
//    }




//}
//