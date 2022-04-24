package org.example.noxml.service;

import org.example.noxml.entity.User;
import org.example.noxml.users.CrmUser;
import org.springframework.security.core.userdetails.UserDetailsService;

public interface UserService extends UserDetailsService {

    User findByUserName(String userName);

    void save(CrmUser crmUser);
}

