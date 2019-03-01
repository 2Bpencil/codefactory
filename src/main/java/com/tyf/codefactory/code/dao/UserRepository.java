package com.tyf.codefactory.code.dao;

import com.tyf.codefactory.base.repository.ExpandJpaRepository;
import com.tyf.codefactory.code.entity.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends ExpandJpaRepository<User,Integer> {

    User findByUsername(String name);

    Page<User> findAll(String name , String password, Pageable pageable);
}
