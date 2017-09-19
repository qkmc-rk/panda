package org.panda.service;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import static org.junit.Assert.*;

public class UserServiceTest {
    @Autowired
    UserService userService;
    @Test
    public void userLogin() throws Exception {
        System.out.print(userService+"======");
    }

    public UserService getUserService() {
        return userService;
    }
    public void setUserService(UserService userService) {
        this.userService = userService;
    }
}