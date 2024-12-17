<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@ page
session="true" %>
<!DOCTYPE html>
<html lang="vi">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Chỉnh Sửa Thông Tin Cá Nhân</title>
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
      input[type="text"],
      input[type="number"],
      input[type="date"],
      input[type="file"] {
        width: 95%;
        padding: 8px;
        margin-bottom: 12px;
        border: 1px solid #ccc;
        border-radius: 4px;
      }
      input[type="submit"] {
        width: 99.5%;
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
      .anhthe {
        display: flex;
        flex-direction: column;
      }
      img {
        width: 16%;
        border-radius: 8px;
        margin-bottom: 5px;
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
      <h2>Chỉnh Sửa Thông Tin</h2>

      <form action="editprofile" method="post" enctype="multipart/form-data">
        <div class="anhthe-item">
          <div class="anhthe">
            <label>Ảnh Thẻ</label>
            <img id="previewImage" src="${user.anhthe}" alt="" />
            <input
              id="fileInput"
              name="fileInput"
              type="file"
              accept="image/*"
            />
          </div>
        </div>

        <label for="username">Tên đăng nhập</label>
        <input
          type="text"
          id="username"
          name="username"
          value="${user.username}"
          readonly
        />

        <label for="ten">Họ và tên</label>
        <input type="text" id="ten" name="ten" value="${user.ten}" required />

        <label for="tuoi">Ngày sinh</label>
        <input
          type="date"
          id="tuoi"
          name="ngaysinh"
          value="${user.ngaysinh}"
          required
        />

        <label for="sdt">Số điện thoại</label>
        <input type="text" id="sdt" name="sdt" value="${user.sdt}" required />

        <label for="diachi">Địa chỉ</label>
        <input
          type="text"
          id="diachi"
          name="diachi"
          value="${user.diachi}"
          required
        />

        <label for="truonghoc">Trường học</label>
        <input
          type="text"
          id="truonghoc"
          name="truonghoc"
          value="${user.truonghoc}"
          required
        />

        <input type="submit" value="Cập Nhật" />
      </form>
    </div>
    <script>
      function logout() {
        const form = document.createElement("form");
        form.method = "POST";
        form.action = "/LogoutServlet";
        document.body.appendChild(form);
        form.submit();
      }

      const fileInput = document.getElementById("fileInput");
      const previewImage = document.getElementById("previewImage");

      fileInput.addEventListener("change", function (event) {
        const file = event.target.files[0];
        if (file) {
          const reader = new FileReader();
          reader.onload = function (e) {
            previewImage.src = e.target.result; // Cập nhật src của ảnh thành nội dung file
          };
          reader.readAsDataURL(file); // Đọc file dưới dạng URL
        }
      });
    </script>
  </body>
</html>
