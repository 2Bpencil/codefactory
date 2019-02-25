package com.tyf.codefactory.code.service;

import com.tyf.codefactory.code.entity.Role;

import java.util.List;

public interface RoleService {

    List<Role> findAll();

    List<Role> findByMenuId(Integer id);

}
