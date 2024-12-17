package com.example.model.bean;

import java.sql.Date;;

public class User {
    private String username;
    private String password;
    private String ten;
    private Date ngaysinh;
    private String sdt;
    private String diachi;
    private String truonghoc;
    private String anhthe;
    private String role;
    public String getUsername() {
        return username;
    }
    public String getPassword() {
        return password;
    }
    public String getTen() {
        return ten;
    }
    public Date getNgaysinh() {
        return ngaysinh;
    }
    public String getSdt() {
        return sdt;
    }
    public String getDiachi() {
        return diachi;
    }
    public String getTruonghoc() {
        return truonghoc;
    }
    public String getAnhthe() {
        return anhthe;
    }
    public String getRole() {
        return role;
    }
    public User(String username, String password, String ten, Date ngaysinh, String sdt, String diachi,
            String truonghoc, String anhthe, String role) {
        this.username = username;
        this.password = password;
        this.ten = ten;
        this.ngaysinh = ngaysinh;
        this.sdt = sdt;
        this.diachi = diachi;
        this.truonghoc = truonghoc;
        this.anhthe = anhthe;
        this.role = role;
    }
    
}
