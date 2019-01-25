package com.sda.pantry.data.repositories;

import com.sda.pantry.data.model.Ingredient;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IngredientsRepository extends JpaRepository<Ingredient,Long> {

//Ingredient findById();
}
