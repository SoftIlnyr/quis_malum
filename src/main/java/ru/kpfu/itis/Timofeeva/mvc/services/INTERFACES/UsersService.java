package ru.kpfu.itis.Timofeeva.mvc.services.INTERFACES;

import ru.kpfu.itis.Timofeeva.mvc.entities.User;

import java.util.List;

/**
 * Created by softi on 23.04.2016.
 */
public interface UsersService {
    User addUser(User user);

    User findById(int id);


    void update(User user);

    List<User> findAll();

    User findByNickname(String name);

    User findByEmail(String email);
}
