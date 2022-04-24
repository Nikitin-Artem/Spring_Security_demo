package org.example.noxml.dao;

import org.example.noxml.entity.User;

public interface UserDao {

    User findByUserName(String userName);

    void save(User user);
}
