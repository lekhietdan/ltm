<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@ page
session="true" %>
<!DOCTYPE html>
<html lang="vi">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>LTM</title>
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
    <div class="container"></div>
  </body>
</html>
