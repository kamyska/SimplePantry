package com.sda.pantry.core.services;

import com.sda.pantry.data.model.Ingredient;
import com.sda.pantry.data.model.Recipe;
import com.sda.pantry.data.repositories.IngredientsRepository;
import com.sda.pantry.data.repositories.RecipesRepository;
import com.sda.pantry.dto.IngredientDTO;
import com.sda.pantry.dto.RecipeDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class IngredientService {
    private RecipesRepository recipesRepository;
    private IngredientsRepository ingredientsRepository;

    @Autowired
    public IngredientService(RecipesRepository recipesRepository, IngredientsRepository ingredientsRepository) {
        this.recipesRepository = recipesRepository;
        this.ingredientsRepository = ingredientsRepository;
    }


    public List<List<IngredientDTO>> getAllMissingIngredients(List<RecipeDTO> recipeList) {

        List<Ingredient> ingredientList = new ArrayList<>();
        List<List<IngredientDTO>> listOfLists = new ArrayList<>();
        for (int i = 0; i < recipeList.size() ; i++) {
            ingredientList = ingredientsRepository.findAllIngredientsForRecipe(recipeList.get(i).getName());
            listOfLists.add(getIngredientDTOSList(ingredientList));
        }

        return listOfLists;
    }



    private List<IngredientDTO> getIngredientDTOSList(List<Ingredient> ingredientList) {
        List<IngredientDTO> ingredientDTOS = new ArrayList<>();
        for (Ingredient ingredient : ingredientList) {
            IngredientDTO ingredientDTO = new IngredientDTO();

            ingredientDTO.setId(ingredient.getId());
            ingredientDTO.setName(ingredient.getName());
            ingredientDTOS.add(ingredientDTO);
        }
        return ingredientDTOS;
    }
}
