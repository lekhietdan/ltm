package com.example.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.model.bo.UserBO;

@WebServlet("/login")
public class CheckLoginServlet extends HttpServlet {

    private static UserBO userBO = new UserBO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        String destination = "login.jsp";
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            if(userBO.isValidUser(username, password)){
                String role = userBO.getRoleUser(username);

                System.out.println(role);

                request.getSession().setAttribute("user", username);
                request.getSession().setAttribute("role", role);

                response.sendRedirect("home");
            }else{
                request.getRequestDispatcher(destination).forward(request, response);
            }
        }catch (Exception e) {
            e.printStackTrace();
        }
    }
}
