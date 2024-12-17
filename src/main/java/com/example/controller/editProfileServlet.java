package com.example.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.model.bean.User;
import com.example.model.bo.UserBO;

@WebServlet("/editprofile")
public class editProfileServlet extends HttpServlet {
    UserBO userBO = new UserBO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = (String) request.getSession().getAttribute("user");
        String role = (String) request.getSession().getAttribute("role");
        try {
            User user = userBO.getUser(username);
            request.setAttribute("user", user);
        } catch (Exception e) {
            
        }
        
        request.getRequestDispatcher("editProfile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String ten = request.getParameter("ten");
        System.out.println(username);
        System.out.println(password);
        System.out.println(ten);

        Date ngaysinh = Date.valueOf(request.getParameter("ngaysinh"));
        String diachi = request.getParameter("diachi");
        String sdt = request.getParameter("sdt");
        String truonghoc = request.getParameter("truonghoc");

        String anhthe = request.getParameter("anhthe");

        if(anhthe == null){
            anhthe = "https://sbcf.fr/wp-content/uploads/2018/03/sbcf-default-avatar.png";
        }
        
        User newUser = new User(username, password, ten, ngaysinh, sdt, diachi, truonghoc, anhthe, anhthe);

        try {
            userBO.addUser(newUser);

            response.sendRedirect("login"); 
        } catch (Exception e) {
            
        }
    }
}

