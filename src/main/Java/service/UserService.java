package service;

import model.User;

public interface UserService {
    void insertUser(User User);
    boolean getUserByLogin(String userName, String password);
    boolean getUserByUserName(String userName);
}