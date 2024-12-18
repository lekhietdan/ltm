<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
  <head>
    <style>
      body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
      }
      header {
        background-color: #4caf50;
        color: white;
        padding: 10px 20px;
        display: flex;
        justify-content: space-between;
        align-items: center;
      }
      header h1 {
        margin: 0;
        font-size: 24px;
      }
      nav {
        display: flex;
        gap: 15px;
      }
      nav a {
        color: white;
        text-decoration: none;
        font-size: 16px;
        padding: 5px 10px;
        border-radius: 5px;
        cursor: pointer;
      }
      nav a:hover {
        background-color: #45a049;
      }
      .container {
        max-width: 1200px;
        margin: auto;
        display: flex;
        flex-direction: column;
        padding: 20px;
      }
      h2 {
        text-align: center;
        margin-bottom: 30px;
      }
      .function-buttons {
        display: grid;
        grid-template-columns: 1fr 1fr;
        gap: 20px;
        margin: 20px 0;
      }
      .button {
        background-color: #4caf50;
        color: white;
        padding: 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        text-decoration: none;
        font-size: 16px;
        text-align: center;
        width: 100%;
      }
      .button:hover {
        background-color: #45a049;
      }
      .logout-btn {
        background-color: #f44336;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        margin-top: 20px;
        align-self: flex-end;
      }
      .logout-btn:hover {
        background-color: #d32f2f;
      }
      .container {
        max-width: 600px;
        margin: auto;
        margin-top: 30px;
        padding: 10px 20px 20px 20px;
        background-color: white;
        border-radius: 8px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
      }
      h2 {
        text-align: center;
        margin-bottom: 40px;
      }
      .profile-item {
        margin-bottom: 15px;
      }
      .profile-item label {
        font-weight: bold;
        display: block;
        margin-bottom: 5px;
      }
      .profile-item span {
        display: block;
        padding: 10px;
        background-color: #f9f9f9;
        border: 1px solid #ddd;
        border-radius: 4px;
      }
      .edit-btn {
        display: block;
        width: 100%;
        padding: 10px 0px 10px 0px;
        background-color: #4caf50;
        color: white;
        text-align: center;
        text-decoration: none;
        border-radius: 5px;
        margin-top: 20px;
        font-size: 16px;
      }
      .edit-btn:hover {
        background-color: #45a049;
      }
      .anhthe {
        display: flex;
        flex-direction: column;
      }
      img {
        width: 80px;
        border-radius: 8px;
      }
      .center-link {
        text-align: center;
        margin-top: 16px;
      }
      .center-link a {
        color: #4caf50;
        text-decoration: none;
      }
      .center-link a:hover {
        text-decoration: underline;
      }
    </style>
  </head>
  <body>
    <header>
      <h1>LTM</h1>
      <nav>
        <a href="home">Trang Chủ</a>
        <a href="register">Đăng Ký</a>
        <a href="login">Đăng Nhập</a>
      </nav>
    </header>
    <div class="container">
      <h2>Thông Tin Cá Nhân</h2>
      <div class="profile-item">
        <label>Ảnh Thẻ</label>
        <img src="${user.anhthe}" alt="Ảnh thẻ" />
      </div>
      <div class="profile-item">
        <label>Họ và tên</label>
        <span>${user.ten}</span>
      </div>
      <div class="profile-item">
        <label>Ngày sinh</label>
        <span>${user.ngaysinh}</span>
      </div>
      <div class="profile-item">
        <label>Số điện thoại</label>
        <span>${user.sdt}</span>
      </div>
      <div class="profile-item">
        <label>Địa chỉ</label>
        <span>${user.diachi}</span>
      </div>
      <div class="profile-item">
        <label>Trường học</label>
        <span>${user.truonghoc}</span>
      </div>
    </div>
  </body>
</html>
