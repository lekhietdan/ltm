package com.example.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.model.bean.User;
import com.example.model.bo.UserBO;


@WebServlet("/home")
public class homeServlet extends HttpServlet {
    private static UserBO userBO = new UserBO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        try {
            String username = (String) request.getSession().getAttribute("user");
            String role = (String) request.getSession().getAttribute("role");
            
            if (/*username != null && */role.equals("admin")) {
                request.getRequestDispatcher("indexAdmin.jsp").forward(request, response);
            } 
            else if (/*username != null &&*/ role.equals("user")) {
                request.getRequestDispatcher("indexUser.jsp").forward(request, response);
            }
            else {
                request.getRequestDispatcher("guest.jsp").forward(request, response);
            }

            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
