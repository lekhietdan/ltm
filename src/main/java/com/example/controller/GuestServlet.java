package com.example.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.model.bean.User;
import com.example.model.dao.UserDAO;

@WebServlet("/guest")
public class GuestServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
            UserDAO userDAO = new UserDAO();
            ArrayList<User> users = new ArrayList<>();
            try {
                // Lấy danh sách người dùng
                users = userDAO.getAllUsers();
            } catch (SQLException | ClassNotFoundException e) {
                e.printStackTrace();
                request.setAttribute("errorMessage", "Không thể lấy danh sách người dùng: " + e.getMessage());
            }
            
            
            request.setAttribute("users", users);
            request.getRequestDispatcher("/guest.jsp").forward(request, response);
            response.sendRedirect("home");
            request.getRequestDispatcher("/guest.jsp").forward(request, response);
        }
}
