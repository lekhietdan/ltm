package com.example.model.dao;

import java.io.IOException;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletResponse;

import com.example.model.bean.User;

public class UserDAO {
    public boolean isExitUser(String username, String password) throws ClassNotFoundException, SQLException{

        DB_DAO repository = new DB_DAO();

        try {
            String sql = "select username, password from user;";
            ResultSet rs = repository.executeQuery(sql);

            while (rs.next()) {
                if(rs.getString("username").equals(username) 
                && rs.getString("password").equals(password)){
                    return true;
                }
            }
        } catch (ClassNotFoundException e) {

        }
        return false;
    }


    public String getRoleUser(String username) throws ClassNotFoundException, SQLException{
        
        DB_DAO repository = new DB_DAO();

        String sql = "select role from user where user.username ='" + username + "';";
        ResultSet rs = repository.executeQuery(sql);

        String role = null;
        
        while (rs.next()) {
            role = rs.getString("role");
        }

        return role;
    }

    public User getUserByUserName(String username) throws ClassNotFoundException, SQLException{
        
        DB_DAO repository = new DB_DAO();

        String sql = "select * from user where user.username ='" + username + "';";
        ResultSet rs = repository.executeQuery(sql);
        
        User user = null;
        
        while (rs.next()) {
            user = new User(
                rs.getString("username"), 
                rs.getString("password"), 
                rs.getString("ten"),
                Date.valueOf(rs.getString("ngaysinh")),
                rs.getString("sdt"),
                rs.getString("diachi"),
                rs.getString("truonghoc"),
                rs.getString("anhthe"),
                rs.getString("role")
            );
        }

        return user;
    }

    public void addUser(User user) throws ClassNotFoundException, SQLException{
        DB_DAO repository = new DB_DAO();
        repository.prepareStatement(user);
    }

    public void updateUser(User user, String username, HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException{
        DB_DAO repository = new DB_DAO();
        repository.prepareStatement_Update(user, username, response);
    }
}