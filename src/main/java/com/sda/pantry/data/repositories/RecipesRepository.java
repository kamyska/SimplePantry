package com.sda.pantry.data.repositories;

import com.sda.pantry.data.model.Recipe;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RecipesRepository extends JpaRepository<Recipe,Long> {

    @Query("select r from Recipe r where r.id=?1")
    List<Recipe> findMatchingRecipes(Long id);

//    Recipe findById();

}
