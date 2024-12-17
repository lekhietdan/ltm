<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
  <head> </head>
  <body>
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
