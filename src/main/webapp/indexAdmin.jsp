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
        <a href="profile">${sessionScope.user}</a>
        <a onclick="logout()">Đăng xuất</a>
      </nav>
    </header>
    <div class="container">
      <h2>Chào mừng, ${sessionScope.user}</h2>

      <!-- Hiển thị các chức năng -->
      <!-- <div class="function-buttons">
        <form action="DanhSachNhanVien" method="get">
          <input type="submit" value="Xem thông tin nhân viên" class="button" />
        </form>
        <form action="DanhSachPhongBan" method="get">
          <input type="submit" value="Xem thông tin phòng ban" class="button" />
        </form>
        <form action="nhanvien" method="get">
          <input
            type="submit"
            value="Chèn thông tin nhân viên"
            class="button"
          />
        </form>
        <form action="phongban" method="get">
          <input
            type="submit"
            value="Chèn thông tin Phòng ban"
            class="button"
          />
        </form>
        <form action="updatePhongBan" method="get">
          <input
            type="submit"
            value="Cập nhật thông tin phòng ban"
            class="button"
          />
        </form>
        <form action="deleteNhanVien" method="get">
          <input type="submit" value="Xóa thông tin nhân viên" class="button" />
        </form>
        <form action="deleteMultipleNhanVien" method="get">
          <input type="submit" value="Xóa nhiều nhân viên" class="button" />
        </form>
      </div> -->

      <!-- Nút đăng xuất -->
    </div>
    <script>
      function logout() {
        const form = document.createElement("form");
        form.method = "POST";
        form.action = "/LogoutServlet";
        document.body.appendChild(form);
        form.submit();
      }
    </script>
  </body>
</html>
