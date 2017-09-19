package org.panda.service.impl;

import org.panda.dao.UserMapper;
import org.panda.model.User;
import org.panda.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    public boolean userLogin(User user) {
        System.out.println("开始调用userMapper....");
        System.out.println("userMapper:"+userMapper);
        System.out.println("user信息:"+user.getUserName() + user.getUserPass());
        System.out.println("查找到的user信息:"+userMapper.selectByUserlogin(user.getUserName()));
        if(userMapper.selectByUserlogin(user.getUserName())!= null){
            System.out.println("找到user.....");
            if((userMapper.selectByUserlogin(user.getUserName()).getUserPass()).equals(user.getUserPass())){
                System.out.println("user匹配....");
                return true;
            }
        }
        System.out.println("失败!");
        return false;
    }

    @Override
    public User getUserByUserlogin(String username) {
        return userMapper.selectByUserlogin(username);
    }

    public UserMapper getUserMapper() {
        return userMapper;
    }

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }
}
