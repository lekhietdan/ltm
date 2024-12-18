<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Danh sách người dùng</title>
    <style>
      table {
        width: 80%;
        margin: 20px auto;
        border-collapse: collapse;
        background: white;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
      }
      th,
      td {
        border: 1px solid #ddd;
        padding: 10px;
        text-align: left;
      }
      th {
        background-color: #4caf50;
        color: white;
      }
      tr:hover {
        background-color: #f1f1f1;
      }
      .view-btn {
        padding: 5px 10px;
        background-color: #4caf50;
        color: white;
        text-decoration: none;
        border-radius: 5px;
      }
      .view-btn:hover {
        background-color: #45a049;
      }
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
    <!-- Hiển thị thông báo lỗi nếu có -->
    <c:if test="${not empty errorMessage}">
      <div class="error">${errorMessage}</div>
    </c:if>

    <header>
      <h1>LTM</h1>
      <nav>
        <a href="home">Trang Chủ</a>
        <a href="register">Đăng Ký</a>
        <a href="login">Đăng Nhập</a>
      </nav>
    </header>
    <div class="container">
      <h1 style="text-align: center">Danh sách người dùng</h1>

      <table>
        <thead>
          <tr>
            <th>Họ và Tên</th>
            <th>Ngày Sinh</th>
            <th>Hành Động</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="user" items="${users}">
            <tr>
              <td>${user.ten}</td>
              <td>${user.ngaysinh}</td>
              <td>
                <a class="view-btn" href="user-detail?username=${user.username}"
                  >Xem thông tin</a
                >
              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>
  </body>
</html>
