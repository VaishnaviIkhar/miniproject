<%-- 
    Document   : Forgot2
    Created on : 3 Feb, 2024, 7:43:52 PM
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
                background-image:url("https://wallpaperset.com/w/full/1/a/4/436139.jpg");
            }
        </style>
    </head>
    <body>
    <center>
       <% String username=(String)session.getAttribute("u");
       String password=(String)session.getAttribute("p");
       session.setAttribute("u",username);
       session.setAttribute("p",password);
       %>
       <h1 style='font-size:35px'>For You🫵</h1><hr><hr>
       <p>   <a href="Forgot3.jsp" style="font-size:30px">Show my Username and Password</a><br><br>
           <a href="AdminHome.jsp" style="font-size:30px">Go to Admin Home Page</a></p>
    </center>
    </body>
</html>
