package com.example.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.model.bean.User;
import com.example.model.dao.UserDAO;

@WebServlet("/user-detail")
public class UserDetailServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        UserDAO userDAO = new UserDAO();
        User user = null;
        try {
            user = userDAO.getUserByUserName(username);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        request.setAttribute("user", user);
        request.getRequestDispatcher("/user-detail.jsp").forward(request, response);
    }
}
