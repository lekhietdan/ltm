package com.example.controller;

import java.io.File;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.example.model.bean.User;
import com.example.model.bo.UserBO;

@WebServlet("/editprofile")
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 2, // 2MB
    maxFileSize = 1024 * 1024 * 10,     // 10MB
    maxRequestSize = 1024 * 1024 * 50,  // 50MB
    location = "D:\\workspace\\bt-ltm\\ltm\\src\\main\\webapp\\images\\"
)
public class editProfileServlet extends HttpServlet {
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
        
        request.getRequestDispatcher("editProfile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = (String) request.getSession().getAttribute("user");

        if(username != null){
            processUpdate(username, request, response);
        }
    }

    private void processUpdate(String username, HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {

        String ten = request.getParameter("ten");
        Date ngaysinh = Date.valueOf(request.getParameter("ngaysinh"));
        String sdt = request.getParameter("sdt");
        String diachi = request.getParameter("diachi");
        String truonghoc = request.getParameter("truonghoc");

        Part filePart = request.getPart("fileInput");
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();

        String anhthe = null;
        if(!fileName.equals("")){

            filePart.write(fileName);
            anhthe = "images/" + fileName;
        }


        User user = new User(ten, ngaysinh, sdt, diachi, truonghoc, anhthe);
        try {
            userBO.updateUser(user, username, response);
        } catch (Exception e) {
            
        }

        response.sendRedirect("profile"); 
    }
}

