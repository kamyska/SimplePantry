//package com.sda.pantry.core.services;
//
//import com.sda.pantry.data.model.User;
//import com.sda.pantry.data.repositories.UserRepository;
//import com.sda.pantry.dto.UserDTO;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//
//
//import java.util.ArrayList;
//import java.util.List;
//
//@Service
//@Transactional
//public class UserService {
//
//    private UserRepository userRepository;
//
//    @Autowired
//    public UserService(UserRepository userRepository) {
//        this.userRepository = userRepository;
//    }
//
//    public UserDTO getUser(Long id) {
//        UserDTO userDTO = new UserDTO();
//        User user = userRepository.getUserById(id);
//        if (user != null) {
//            userDTO.setId(user.getId());
//            userDTO.setEmail(user.getEmail());
//            userDTO.setName(user.getName());
//            userDTO.setPassword(user.getPassword());
//        }
//        return userDTO;
//    }
//
//    public List<UserDTO> findAllUsers() {
//        List<User> list = userRepository.findAll();
//        if (!list.isEmpty()) {
//
//            List<UserDTO> userDTOS = new ArrayList<>();
//
//            for (int i = 0; i < list.size(); i++) {
//                UserDTO userDTO = new UserDTO();
//                userDTO.setId(list.get(i).getId());
//                userDTO.setEmail(list.get(i).getEmail());
//                userDTO.setName(list.get(i).getName());
//                userDTO.setPassword(list.get(i).getPassword());
//                userDTOS.add(userDTO);
//            }
//
//            return userDTOS;
//        }
//        return null;
//    }
//}
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

    public UserDTO getUserByEmail(String email, String password) {
        UserDTO userDTO = null;
        User user = userRepository.getUserByEmailAndPassword(email, password);
        if (user != null) {
            userDTO = new UserDTO();
            userDTO.setId(user.getId());
            userDTO.setEmail(user.getEmail());
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

    public boolean checkCredentials(String email, String password) {
        Boolean userExists = userRepository.checkIfUserExists(email, password);
        return userExists;
    }

    public void addNewUser(String email, String password, String name){
        userRepository.addNewUser(email, password, name);
    }

    public void deleteUser(Long id){
        userRepository.deleteUser(id);
    }
}