<%-- 
    Document   : Forgot3
    Created on : 3 Feb, 2024, 7:49:55 PM
    Author     : vaish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background-image:url("https://wallpaperset.com/w/full/e/1/4/436141.jpg");
            }
        </style>
    </head>
    <body>
    <center>
        <% String username=(String)session.getAttribute("u");
        String password=(String)session.getAttribute("p");
        %>
        <h1 style="font-size:50px; color:blue">🎗️Don't forgot Username and Password🎗️</h1>
        <span style="font-size:25px; color:yellowgreen">Username:</span><u style="font-size:20px; color:red"><%=username%></u><br><br>
        <span style="font-size:25px; color:yellowgreen">Password:</span><u style="font-size:20px; color:red"><%=password%></u><br><br>
        <b> <a href='AdminHome.jsp' style="font-size:25px; color:skyblue">Go to Home page</a></b>
    </center>
    </body>
</html>
