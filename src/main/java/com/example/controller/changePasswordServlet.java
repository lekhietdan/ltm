package com.example.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.model.bean.User;
import com.example.model.bo.UserBO;

@WebServlet("/changepassword")
public class changePasswordServlet extends HttpServlet {
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
        request.getRequestDispatcher("changePassword.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = (String) request.getSession().getAttribute("user");
        String currPassword = request.getParameter("currPassword");
        String newPassword =  request.getParameter("newPassword");
        try {
            if(username != null){
                User user = userBO.getUser(username);
                request.setAttribute("user", user);

                String userPassword = userBO.getUser(username).getPassword();

                if(userPassword.equals(currPassword)){
                    userBO.changePasswordUser(newPassword, username, response);
                }else{
                    response.setStatus(400);
                }
            }else{
                response.sendRedirect("login");
            }
        } catch (Exception e) {
            
        }
    }

}

