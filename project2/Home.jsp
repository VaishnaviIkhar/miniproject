<%-- 
    Document   : Home
    Created on : 1 Feb, 2024, 7:04:39 PM
    Author     : vaish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String u=request.getParameter("username");
        String p=request.getParameter("password");
        String username=(String)session.getAttribute("u");
        String password=(String)session.getAttribute("p");
    
        if(u.equalsIgnoreCase(username) && p.equals(password))
        {
            response.sendRedirect("AdminHome.jsp");
        }
        else
        {
            out.print("<h1><center>Invalid Username or password</center></h1>");
        }
        %>
        
    </body>
</html>
