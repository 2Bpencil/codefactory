package com.tyf.codefactory.code.controller;

import com.tyf.codefactory.code.entity.User;
import com.tyf.codefactory.code.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/demo")
public class DemoController {

    @Autowired
    private UserServiceImpl userService;

    @RequestMapping(value = "hello",method = RequestMethod.GET)
    public String hello(Model model){
        Page<User> userPages = userService.findPage(1);
        model.addAttribute("userList",userPages);
        System.out.println("bbbaaa:"+userPages.getTotalElements());
        return "hello";
    }



}
