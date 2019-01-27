package com.sda.pantry.data.repositories;

import com.sda.pantry.data.model.Recipe;
import com.sda.pantry.dto.RecipeDTO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RecipesRepository extends JpaRepository<Recipe,Long> {

//    @Query("select r from Recipe r, Ingredient i join r.ingredientSet join i.recipes where i.id=?1")
  @Query(nativeQuery = true, value = "select r.* from recipes r join ingredients_recipes ir on r.id_recipe = ir.id_recipe join all_ingredients ai on ir.id_user_ingredient=ai.id_ingredient  where ai.i_name =?1")
    List<Recipe> findMatchingRecipesWithIngredientName(String name);

  @Query(nativeQuery = true, value = "select r.* from recipes r join recipe_type rt on r.r_type=rt.id_type where rt.type_name=?1")
List<Recipe>findMatchingRecipesWithCategory(String category);
//    Recipe findById();

}
