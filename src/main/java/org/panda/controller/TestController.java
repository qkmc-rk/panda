package org.panda.controller;


import org.panda.dao.UserMapper;
import org.panda.service.UserService;
import org.panda.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestController {

    @Autowired
    UserService userService;
    @ResponseBody
    @RequestMapping("/test.do")
    public String test1(){
        System.out.print(userService);
        userService.userLogin(null);
        return "<div><h1>test spring mvc success! ILJ</h1></div>";
    }


    //getters and setters
    public UserService getUserService() {
        return userService;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }
}
