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
import com.example.model.bo.UserBO;
import com.example.model.dao.UserDAO;

@WebServlet("/guest")
public class GuestServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            UserDAO userDAO = new UserDAO();
            //UserBO userBO = new UserBO();
            ArrayList<User> users = new ArrayList<>();
            try {
                // Lấy danh sách người dùng
                users = userDAO.getAllUsers();
                //users = userBO.getAllUsers();
                request.setAttribute("users", users);
            } catch (SQLException | ClassNotFoundException e) {
                e.printStackTrace();
                request.setAttribute("errorMessage", "Không thể lấy danh sách người dùng: " + e.getMessage());
            }
            
            request.getRequestDispatcher("/guest.jsp").forward(request, response);
    }
}
