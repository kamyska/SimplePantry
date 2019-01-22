package com.sda.pantry.data.repositories;

import com.sda.pantry.data.model.Recipe;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RecipesRepository extends JpaRepository<Recipe,Long> {
}
