package com.example.model.bo;

import java.sql.SQLException;

import com.example.model.bean.User;
import com.example.model.dao.UserDAO;

public class UserBO {

    UserDAO userDAO = new UserDAO();

    public boolean isValidUser(String username, String password) 
        throws ClassNotFoundException, SQLException
    {
        return userDAO.isExitUser(username, password);
    }

    public String getRoleUser(String username) throws ClassNotFoundException, SQLException{
        return userDAO.getRoleUser(username);
    }

    public User getUser(String username) throws ClassNotFoundException, SQLException{
        return userDAO.getUserByUserName(username);
    }

    public void addUser(User user) throws ClassNotFoundException, SQLException{
        userDAO.addUser(user);
    }
}
