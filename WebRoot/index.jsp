<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title>人力资源信息管理系统</title>
  </head>
  
  <body>
        <% 
        String path = request.getContextPath();
        response.sendRedirect(path+"/users/Users_login.jsp");
        %>
  </body>
</html>
