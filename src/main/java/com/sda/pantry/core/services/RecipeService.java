package com.sda.pantry.core.services;


import com.sda.pantry.data.repositories.IngredientsRepository;
import com.sda.pantry.data.repositories.RecipesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
}
