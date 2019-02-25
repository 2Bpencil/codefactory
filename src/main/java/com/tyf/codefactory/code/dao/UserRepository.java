package com.tyf.codefactory.code.dao;

import com.tyf.codefactory.base.repository.ExpandJpaRepository;
import com.tyf.codefactory.code.entity.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends ExpandJpaRepository<User,Integer> {

    User findByUsername(String name);

}
