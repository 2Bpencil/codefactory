package com.tyf.codefactory.code.service.impl;


import com.tyf.codefactory.code.dao.RoleRepository;
import com.tyf.codefactory.code.dao.UserRepository;
import com.tyf.codefactory.code.entity.Role;
import com.tyf.codefactory.code.entity.User;
import com.tyf.codefactory.code.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserServiceImpl  implements UserService,UserDetailsService {

    @Autowired
    private UserRepository userRepository;
    @Autowired
    private RoleRepository roleRepository;

    @Override
    public UserDetails loadUserByUsername(String name) throws UsernameNotFoundException {
        User user = userRepository.findByUsername(name);
        if (user != null) {
            List<Role> roles = roleRepository.findByUserId(user.getId());
            System.out.println(roles.size());
            user.setRoles(roles);
            List<GrantedAuthority> grantedAuthorities = new ArrayList<>();
            for (Role role : roles) {
                GrantedAuthority grantedAuthority = new SimpleGrantedAuthority(role.getAuthority());
                //1：此处将权限信息添加到 GrantedAuthority 对象中，在后面进行全权限验证时会使用GrantedAuthority 对象。
                grantedAuthorities.add(grantedAuthority);
            }
            return user;
        } else {throw new UsernameNotFoundException("admin: " + name + " do not exist!");

        }
    }

    @Override
    public User saveEntity(User user) {
        return userRepository.save(user);
    }

    public List<User> findAll(){
        return userRepository.findAll();
    }

    @Override
    public Page<User> findPage(Integer page) {
        if (null == page) {
            page = 0;
        }
        PageRequest pageable = PageRequest.of(page, 15, Sort.Direction.DESC, "id");
        Page<User> users = userRepository.findAll(pageable);
        return users;
    }
}
