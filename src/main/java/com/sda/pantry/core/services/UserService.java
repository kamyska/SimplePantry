package com.sda.pantry.core.services;

import com.sda.pantry.data.model.User;
import com.sda.pantry.data.repositories.UserRepository;
import com.sda.pantry.dto.UserDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class UserService {

    private UserRepository userRepository;

    @Autowired
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public UserDTO getUser(Long id) {
        UserDTO userDTO = new UserDTO();
        User user = userRepository.getUserById(id);
        if (user != null) {
            userDTO.setId(user.getId());
            userDTO.setEmail(user.getEmail());
            userDTO.setName(user.getName());
            userDTO.setPassword(user.getPassword());
        }
        return userDTO;
    }

    public List<UserDTO> findAllUsers() {
        List<User> list = userRepository.findAll();
        if (!list.isEmpty()) {

            List<UserDTO> userDTOS = new ArrayList<>();

            for (int i = 0; i < list.size(); i++) {
                UserDTO userDTO = new UserDTO();
                userDTO.setId(list.get(i).getId());
                userDTO.setEmail(list.get(i).getEmail());
                userDTO.setName(list.get(i).getName());
                userDTO.setPassword(list.get(i).getPassword());
                userDTOS.add(userDTO);
            }

            return userDTOS;
        }
        return null;
    }
}
