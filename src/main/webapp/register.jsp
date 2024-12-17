<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@ page
session="true" %>
<!DOCTYPE html>
<html lang="vi">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Form Đăng Ký</title>
    <style>
      body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
      }
      .register-container {
        background-color: white;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        width: 400px;
      }
      h2 {
        text-align: center;
      }
      label {
        display: block;
        margin-bottom: 8px;
        font-weight: bold;
      }
      input[type="text"],
      input[type="password"],
      input[type="number"],
      input[type="file"],
      input[type="date"] {
        width: 96%;
        padding: 8px;
        margin-bottom: 12px;
        border: 1px solid #ccc;
        border-radius: 4px;
      }
      input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #4caf50;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
      }
      input[type="submit"]:hover {
        background-color: #45a049;
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
    <div class="register-container">
      <h2>Đăng Ký</h2>

      <form action="register" method="post">
        <label for="username">Tên Đăng Nhập</label>
        <input type="text" id="username" name="username" required />

        <label for="password">Mật Khẩu</label>
        <input type="password" id="password" name="password" required />

        <label for="ten">Họ và tên</label>
        <input type="text" id="ten" name="ten" required />

        <label for="tuoi">Ngày sinh:</label>
        <input type="date" id="ngaysinh" name="ngaysinh" required />

        <label for="sdt">Số Điện Thoại:</label>
        <input type="text" id="sdt" name="sdt" required />

        <label for="diachi">Địa Chỉ:</label>
        <input type="text" id="diachi" name="diachi" required />

        <label for="truonghoc">Trường Học:</label>
        <input type="text" id="truonghoc" name="truonghoc" required />

        <input type="submit" value="Đăng Ký" />
      </form>

      <div class="center-link">
        <a href="/login">Đi đến đăng nhập</a>
      </div>
    </div>
  </body>
</html>
