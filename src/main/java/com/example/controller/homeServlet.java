package com.example.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.model.bean.User;
import com.example.model.bo.UserBO;
import com.example.model.dao.UserDAO;


@WebServlet("/home")
public class homeServlet extends HttpServlet {
    private static UserBO userBO = new UserBO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        try {
            String username = (String) request.getSession().getAttribute("user");
            String role = (String) request.getSession().getAttribute("role");
            
            if (username != null && role.equals("admin")) {
                request.getRequestDispatcher("indexAdmin.jsp").forward(request, response);
            }
            else if (username != null && role.equals("user")) {
                request.getRequestDispatcher("indexUser.jsp").forward(request, response);
            }
            else {
                // // Lấy danh sách người dùng từ UserBO hoặc UserDAO
                // UserDAO userDAO = new UserDAO(); // hoặc dùng UserBO
                 //ArrayList<User> users = userBO.getAllUsers();
            
                // // Đưa danh sách người dùng vào Request Attribute
                 //request.setAttribute("users", users);
            
                // // Chuyển hướng đến guest.jsp
                request.getRequestDispatcher("guest.jsp").forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
