<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@ page
session="true" %>
<!DOCTYPE html>
<html lang="vi">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Trang Đăng Nhập</title>
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
      .login-container {
        background-color: white;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        width: 300px;
      }
      h2 {
        text-align: center;
      }
      label {
        display: block;
        margin-bottom: 8px;
      }
      input[type="text"],
      input[type="password"] {
        width: 94%;
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
      .error-message {
        color: red;
        text-align: center;
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
    <div class="login-container">
      <h2>Đăng Nhập</h2>

      <form action="login" method="post">
        <label for="username">Tên Đăng Nhập:</label>
        <input type="text" id="username" name="username" required />

        <label for="password">Mật Khẩu:</label>
        <input type="password" id="password" name="password" required />

        <input type="submit" value="Đăng Nhập" />
      </form>

      <div class="center-link">
        <a href="/register">Đi đến đăng ký</a>
      </div>
    </div>
  </body>
</html>
