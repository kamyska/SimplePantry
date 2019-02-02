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


    public List<RecipeDTO> getAlmostMatchingRecipes(String string) {
        List<List<Recipe>> listOfLists = getListOfAllMatches(string);
        Set<Recipe> recipeSet = new HashSet<>();
        for (int i = 0; i <listOfLists.size() ; i++) {
           recipeSet.addAll(listOfLists.get(i));
        }
        List<RecipeDTO> recipeDTOS = new ArrayList<>();
        List<Recipe> recipeList = new ArrayList<>();
        recipeList.addAll(recipeSet);
        return getRecipeDTOSList(recipeList, recipeDTOS);
    }

    public List<RecipeDTO> getMatchingRecipes(String string) {
        List<RecipeDTO> recipeDTOS = new ArrayList<>();
        List<List<Recipe>> listOfLists = getListOfAllMatches(string);

        if (listOfLists.isEmpty()) {
                return null;
        } else {
            List<Recipe> tempList = listOfLists.get(0);
            if (listOfLists.size() == 1) {
                tempList = tempList;
            } else {
                for (int i = 0; i < listOfLists.size(); i++) {
                    tempList.retainAll(listOfLists.get(i));
                }
            }
            if (!tempList.isEmpty()) {
                return getRecipeDTOSList(tempList, recipeDTOS);
            } else {
            }
        }
        return null;
    }

    private List<List<Recipe>> getListOfAllMatches(String string) {
        List<String> stringList = convertStringToList(string);


        List<List<Recipe>> listOfLists = new ArrayList<>();
        for (String word : stringList) {
            List<Recipe> matchingRecipesCategory = recipesRepository.findMatchingRecipesWithCategory(word);
            List<Recipe> matchingWithOneIngredient = recipesRepository.findMatchingRecipesWithIngredientName(word);
            if (!matchingRecipesCategory.isEmpty()) {
                listOfLists.add(matchingRecipesCategory);
            }
            if (!matchingWithOneIngredient.isEmpty()) {
                listOfLists.add(matchingWithOneIngredient);
            }
        }
        return listOfLists;
    }


    private List<RecipeDTO> getRecipeDTOSList(List<Recipe> recipeList, List<RecipeDTO> recipeDTOS) {
        for (Recipe recipe : recipeList) {
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

