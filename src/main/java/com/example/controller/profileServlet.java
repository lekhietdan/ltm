package com.example.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.model.bean.User;
import com.example.model.bo.UserBO;

@WebServlet("/profile")
public class profileServlet extends HttpServlet {
    UserBO userBO = new UserBO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = (String) request.getSession().getAttribute("user");
        try {
            if(username != null){
                User user = userBO.getUser(username);
                request.setAttribute("user", user);
            }else{
                response.sendRedirect("login");
            }
        } catch (Exception e) {
            
        }
        request.getRequestDispatcher("userProfile.jsp").forward(request, response);
    }

}

