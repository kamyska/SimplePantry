package com.sda.pantry.core.services;


import com.sda.pantry.data.model.Recipe;
import com.sda.pantry.data.repositories.IngredientsRepository;
import com.sda.pantry.data.repositories.RecipesRepository;
import com.sda.pantry.dto.RecipeDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

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

    public List<RecipeDTO> getMatchingRecipes(String string) {

        List<String> stringList = convertStringToList(string);

        Set<Recipe> matchingRecipesWithIngredientName = new HashSet<>();
        Set<Recipe> matchingRecipesCategory = new HashSet<>();
        List<RecipeDTO> recipeDTOS = new ArrayList<>();
        for (String word : stringList) {
            matchingRecipesWithIngredientName.addAll(recipesRepository.findMatchingRecipesWithIngredientName(word));
            matchingRecipesCategory.addAll(recipesRepository.findMatchingRecipesWithCategory(word));
        }
        if (!matchingRecipesWithIngredientName.isEmpty()) {
            return getRecipeDTOSList(matchingRecipesWithIngredientName, recipeDTOS);
        } else {

            if (!matchingRecipesCategory.isEmpty()) {
                return getRecipeDTOSList(matchingRecipesCategory, recipeDTOS);
            }
        }
        return null;
    }

    private List<RecipeDTO> getRecipeDTOSList(Set<Recipe> recipeSet, List<RecipeDTO> recipeDTOS) {
        for (Recipe recipe:recipeSet) {
            RecipeDTO recipeDTO = new RecipeDTO();

            recipeDTO.setId(recipe.getId());
            recipeDTO.setDescription(recipe.getDescription());
            recipeDTO.setName(recipe.getName());
            recipeDTO.setType(recipe.getType());
            recipeDTOS.add(recipeDTO);
        }
        return recipeDTOS;
        }



    private List<String> convertStringToList(String string) {
        String cleanString = string.replaceAll("[,.;/:_]", " ");
        List<String> strings = Arrays.asList(cleanString.split(" "));
        List<String> convertedWords = new ArrayList<>();
        for (String word : strings) {
            word.trim();
            if (word.length()!=0){
                convertedWords.add(word);
            }
        }
        return convertedWords;
    }
}

