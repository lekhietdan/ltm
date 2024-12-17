<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@ page
session="true" %>
<!DOCTYPE html>
<html lang="vi">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Đổi mật khẩu</title>
    <style>
      body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        height: 100vh;
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
      .edit-container {
        background-color: white;
        margin: auto;
        margin-top: 30px;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        width: 400px;
      }
      h2 {
        text-align: center;
        margin-bottom: 20px;
      }
      label {
        display: block;
        margin-bottom: 8px;
        font-weight: bold;
      }
      input[type="password"],
      input[type="submit"] {
        width: 95%;
        padding: 8px;
        margin-bottom: 12px;
        border: 1px solid #ccc;
        border-radius: 4px;
      }
      input[type="submit"] {
        width: 99.5%;
        background-color: #4caf50;
        color: white;
        border: none;
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
    <header>
      <h1>LTM</h1>
      <nav>
        <a href="home">Trang Chủ</a>
        <a href="profile">${sessionScope.user}</a>
        <a onclick="logout()">Đăng xuất</a>
      </nav>
    </header>
    <div class="edit-container">
      <h2>Đổi Mật Khẩu</h2>

      <form id="changePasswordForm">
        <label for="currPassword">Mật khẩu hiện tại</label>
        <input type="password" id="currPassword" name="currPassword" required />

        <label for="newPassword">Mật khẩu mới</label>
        <input type="password" id="newPassword" name="newPassword" required />

        <label for="confirmNewPassword">Nhập lại mật khẩu mới</label>
        <input
          type="password"
          id="confirmNewPassword"
          name="confirmNewPassword"
          required
        />

        <input id="btn-update" type="submit" value="Cập Nhật" />
      </form>
      <div class="center-link">
        <a href="javascript:history.back()">Quay lại</a>
      </div>
    </div>

    <script>
      function logout() {
        const form = document.createElement("form");
        form.method = "POST";
        form.action = "/LogoutServlet";
        document.body.appendChild(form);
        form.submit();
      }

      document.getElementById("changePasswordForm").onsubmit = function (
        event
      ) {
        event.preventDefault();

        const newPassword = document.getElementById("newPassword").value;
        const confirmPassword =
          document.getElementById("confirmNewPassword").value;

        if (newPassword === confirmPassword) {
          fetch("http://localhost:8080/changepassword", {
            method: "POST",
            headers: {
              "Content-Type": "application/x-www-form-urlencoded",
            },
            body: new URLSearchParams(new FormData(this)),
          })
            .then((response) => {
              if (response.status === 400) {
                throw new Error("Mật khẩu cũ không chính xác");
              }
            })
            .then((data) => {
              alert("Mật khẩu đã được cập nhật thành công!");
              window.location.href = "profile";
            })
            .catch((error) => {
              alert(error);
            });
        } else {
          alert("Mật khẩu mới và Nhập lại mật khẩu không khớp!");
        }
      };
    </script>
  </body>
</html>
