package com.example.model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.example.model.bean.User;

public class DB_DAO {
    public ResultSet executeQuery(String sql) throws SQLException, ClassNotFoundException{

        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ltm", "root", "");
        Statement sm = con.createStatement();

        ResultSet rs = sm.executeQuery(sql);

        return rs;
    }

    public void prepareStatement(User user) throws SQLException, ClassNotFoundException{

        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ltm", "root", "");
        String sql = "INSERT INTO user VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement ps = con.prepareStatement(sql);

        ps.setString(1, user.getTen());    
        ps.setDate(2, user.getNgaysinh());  
        ps.setString(3, user.getSdt());   
        ps.setString(4, user.getDiachi());  
        ps.setString(5, user.getTruonghoc());  
        ps.setString(6, user.getAnhthe());   
        ps.setString(7, "user");  
        ps.setString(8, user.getUsername());  
        ps.setString(9, user.getPassword());  

        int rowsAffected = ps.executeUpdate();

        if (rowsAffected > 0) {
            System.out.println("Thêm user thành công!");
        } else {
            System.out.println("Không thể thêm user.");
        }
    }
}
