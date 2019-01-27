package com.sda.pantry.core.services;


import com.sda.pantry.data.model.Recipe;
import com.sda.pantry.data.repositories.IngredientsRepository;
import com.sda.pantry.data.repositories.RecipesRepository;
import com.sda.pantry.dto.RecipeDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class RecipeService {

    private RecipesRepository recipesRepository;
    private IngredientsRepository ingredientsRepository;

    @Autowired
    public RecipeService(RecipesRepository recipesRepository, IngredientsRepository ingredientsRepository) {
        this.recipesRepository = recipesRepository;
        this.ingredientsRepository = ingredientsRepository;
    }

    public RecipeDTO getRecipe() {
        return null;
    }

    public List<RecipeDTO> getMatchingRecipes(String name) {

        List<Recipe> matchingRecipes = recipesRepository.findMatchingRecipesWithIngredientName(name);

        if (!matchingRecipes.isEmpty()) {

            List<RecipeDTO> recipeDTOS = new ArrayList<>();

            for (int i = 0; i < matchingRecipes.size(); i++) {
                RecipeDTO recipeDTO = new RecipeDTO();
                recipeDTO.setId(matchingRecipes.get(i).getId());
                recipeDTO.setDescription(matchingRecipes.get(i).getDescription());
                recipeDTO.setName(matchingRecipes.get(i).getName());
                recipeDTO.setType(matchingRecipes.get(i).getType());

                recipeDTOS.add(recipeDTO);
            }
            return recipeDTOS;
        } else {
            List<Recipe> matchingRecipesCategory = recipesRepository.findMatchingRecipesWithCategory(name);
            if (!matchingRecipesCategory.isEmpty()) {

                List<RecipeDTO> recipeDTOS = new ArrayList<>();

                for (int i = 0; i < matchingRecipesCategory.size(); i++) {
                    RecipeDTO recipeDTO = new RecipeDTO();
                    recipeDTO.setId(matchingRecipesCategory.get(i).getId());
                    recipeDTO.setDescription(matchingRecipesCategory.get(i).getDescription());
                    recipeDTO.setName(matchingRecipesCategory.get(i).getName());
                    recipeDTO.setType(matchingRecipesCategory.get(i).getType());

                    recipeDTOS.add(recipeDTO);
                }
                return recipeDTOS;
            }
        }
        return null;
    }
}

