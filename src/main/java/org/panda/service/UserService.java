package org.panda.service;

import org.panda.model.User;

public interface UserService {

    /*
    * @method userLogin
    * @param user
    * @return whether has this user.
    * */
    public boolean userLogin(User user);

    /*
    * @method getUserByName
    * @param  String username
    * @return User or null
    * */
    public  User getUserByUserlogin(String username);
}
