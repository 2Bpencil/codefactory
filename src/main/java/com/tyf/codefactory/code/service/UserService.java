package com.tyf.codefactory.code.service;


import com.tyf.codefactory.code.entity.User;
import org.springframework.data.domain.Page;

import java.util.List;

public interface UserService {

    User saveEntity(User user);

    List<User> findAll();

    Page<User> findPage(Integer page);

}
