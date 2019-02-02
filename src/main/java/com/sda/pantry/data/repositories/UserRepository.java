package com.sda.pantry.data.repositories;

import com.sda.pantry.data.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User,Long> {

    User getUserById (Long id);

    @Override
    List<User> findAll();

    @Query(nativeQuery = true, value = "SELECT CASE WHEN count(*) >= 1 THEN 'true' else 'false' END " +
            "FROM users WHERE email = ?1 AND password = ?2")
    Boolean checkIfUserExists(String email, String password);


    User getUserByEmailAndPassword(String email, String password);

    @Modifying
    @Query(nativeQuery = true, value = "insert into users (email, password, name) values (?1, ?2, ?3)")
    void addNewUser(String email, String password, String name);

    @Modifying
    @Query(nativeQuery = true, value = "delete from users where id = ?1")
    void deleteUser(Long id);
}
