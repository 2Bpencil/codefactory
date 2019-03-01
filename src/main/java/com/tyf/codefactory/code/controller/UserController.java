package com.tyf.codefactory.code.controller;


import com.tyf.codefactory.code.entity.User;
import com.tyf.codefactory.code.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserServiceImpl userService;
    @RequestMapping(value = "userManage",method = RequestMethod.GET)
    public String userManage(Model model){
        model.addAttribute("userList",userService.findAll());
        return "system/user";
    }







}
