package org.example.noxml.dao;

import org.example.noxml.entity.Role;

public interface RoleDao {

    public Role findRoleByName(String theRoleName);
}
