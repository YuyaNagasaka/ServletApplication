<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String updateErrorMessage = (String)request.getAttribute("updateErrorMessage");
   String updateTitleErrorMessage = (String)request.getAttribute("updateTitleErrorMessage");
   String updateDescriptionErrorMessage = (String)request.getAttribute("updateDescriptionErrorMessage");
   String updateKeywordErrorMessage = (String)request.getAttribute("updateKeywordErrorMessage");
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>編集画面</title>
    <link href="Footer.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body>
    <nav class="navbar navbar-dark bg-dark">
      <ul style = "display: flex; list-style-type: none; text-align: center;">
        <li class = mr-3><a href="/application/Create.jsp" class = "text-white">新規投稿</a></li>
        <li class ="mr-3"><a href="/application/IndexServlet" class = "text-white">投稿一覧</a></li>
        <li class ="mr-3"><a href="/application/LogoutServlet" class = "text-white">ログアウト</a></li>
      </ul>
    </nav>
    <% if(updateErrorMessage != null){%>
      <div class="alert alert-danger" role="alert"> 
         <div class = "ml-4"><%= updateErrorMessage %></div>
      </div>
    <%}%>
    <% if(updateTitleErrorMessage != null){%>
      <div class="alert alert-danger" role="alert"> 
         <div class = "ml-4"><%= updateTitleErrorMessage %></div>
      </div>
    <%}%>
    <% if(updateDescriptionErrorMessage != null){%>
      <div class="alert alert-danger" role="alert"> 
         <div class = "ml-4"><%= updateDescriptionErrorMessage %></div>
      </div>
    <%}%>
    <% if(updateKeywordErrorMessage != null){%>
      <div class="alert alert-danger" role="alert"> 
         <div class = "ml-4"><%= updateKeywordErrorMessage %></div>
      </div>
    <%}%>
    <h1  class = "mt-5 ml-5">投稿編集画面</h1>
    <form action = "/application/UpdateServlet" method="Post">
      <input type="hidden" name="id" value = "${output.id}">
      <div class = "mt-3 ml-5">タイトル　　<input type = "text" name="title" value = "${output.title}"></div>
      <div class = "mt-3 ml-5">説明　　　　<input type = "text" name = "description" value = "${output.description}"></div>
      <div class = "mt-3 ml-5">キーワード　<input type = "text" name = "keyword" value = "${output.keyword}"></div>
      <button class="btn btn-success btn-lg mt-3 ml-5" type="submit">更新</button>
    </form> 
    <footer class="footer">
        <div class="text-white mt-3 ml-5">copyright(c)2021 Yuya Nagasaka</div>
    </footer>  
  </body>
</html>