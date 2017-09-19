package org.panda.dao;

import org.panda.model.User;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
@Repository("userMapper")
public interface UserMapper {
    int deleteByPrimaryKey(Integer userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userId);

    User selectByUserlogin(String userlogin);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}