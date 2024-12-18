package com.example.model.bo;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

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
    public User getUserByUserName(String username) throws ClassNotFoundException, SQLException{
        return userDAO.getUserByUserName(username);  
    }

    public void addUser(User user) throws ClassNotFoundException, SQLException{
        userDAO.addUser(user);
    }

    public void updateUser(User user, String username, HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException{
        userDAO.updateUser(user, username);
    }

    public void changePasswordUser(String newPassword, String username, HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException{
        userDAO.changePasswordUser(newPassword, username);
    }
    public ArrayList<User> getAllUsers() throws ClassNotFoundException, SQLException, IOException{
        return userDAO.getAllUsers();
    }
}
