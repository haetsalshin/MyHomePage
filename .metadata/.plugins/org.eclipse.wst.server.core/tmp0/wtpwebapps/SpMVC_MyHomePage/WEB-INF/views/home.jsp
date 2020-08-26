<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>나의 홈페이지</title>
<style>
      * {
        margin: 0;
        padding: 0;
      }
      .wrapper {
        width: 1170px;
        margin: auto;
      }
      header {
        background-image: url("../main/webapp/static/images/바다1.jpg" );
        height: 100vh;
        background-size: cover;
        background-position: center center;
        position: relative;
      }
      .nav-area {
        float: right;
        list-style: none;
        margin-top: 30px;
      }
      .nav-area li {
        display: inline-block;
      }
      .nav-area li a {
        color: #fff;
        text-decoration: none;
        padding: 5px 20px;
        font-size: 16px;
      }
      .welcome-text {
        position: absolute;
        width: 600px;
        height: 300px;
        margin: 20% 30%;
        text-align: center;
      }
      .welcome-text.h1 {
        text-align: center;
        color: #fff;
        text-transform: uppercase;
        font-size: 60px;
      }
      .welcome-text a {
        border: 1px solid #fff;
        padding: 10px 25px;
        text-decoration: none;
        text-transform: uppercase;
        font-size: 14px;
        margin-top: 20px;
        display: inline-block;
        color: #fff;
      }
      .welcome-text a:hover {
        background-color: #fff;
        color: #333;
      }
    </style>
</head>
 <body>
    <header>
      <div class="wrapper">
        <ul class="nav-area">
          <li><a href="#">home</a></li>
          <li><a href="#">주문서 리스트</a></li>
          <li><a href="#">회원가입</a></li>
          <li><a href="#">로그인</a></li>
        </ul>
      </div>
      <div class="welcome-text">
        <h1>Welcome to my homepage</h1>
        <a href="#">Sonnes Server</a>
      </div>
    </header>
  </body>
</html>
