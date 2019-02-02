package com.sda.pantry.data.repositories;

import com.sda.pantry.data.model.Ingredient;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IngredientsRepository extends JpaRepository<Ingredient,Long> {


    @Query(nativeQuery = true, value ="select ai.* from all_ingredients ai join ingredients_recipes ir on ir.id_user_ingredient=ai.id_ingredient join recipes r on r.id_recipe=ir.id_recipe where r.r_name=?1")
    List<Ingredient> findAllIngredientsForRecipe(String recipe);
//Ingredient findById();
}
