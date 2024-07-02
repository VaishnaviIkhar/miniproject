<%-- 
    Document   : Login
    Created on : 1 Feb, 2024, 6:49:46 PM
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
                background-image:url("https://th.bing.com/th/id/R.95fba5a9dd2697d9797a8da9f2daea81?rik=rhpwNPtvo45d%2bQ&riu=http%3a%2f%2fwallpapercave.com%2fwp%2fJlc8Afe.jpg&ehk=UBrOPibXv5aSfeey%2fta8G%2bglFsCWD5T6ViODVHMs%2ff0%3d&risl=&pid=ImgRaw&r=0");
            }
            button{
                width:100px;
                height:30px;
            }
        </style>
    </head>
    <body>
        
        <% String username=(String)session.getAttribute("user");
        String password=(String)session.getAttribute("pass");
        String e=(String)session.getAttribute("email");
        session.setAttribute("u",username);
        session.setAttribute("p",password);
        session.setAttribute("email",e);
        %>
    <center>
        <hr>
        <img src="https://th.bing.com/th/id/R.936dfb2491dc95e1308d6bfe82619835?rik=gMqo9ZWsE94H5w&riu=http%3a%2f%2fdavbalurghat.in%2fFile%2f2471%2flogin-blue.png&ehk=G97k%2fyJjpK97La3IKuOOIQyi2%2fojlTLRBvI4KPkdE8o%3d&risl=&pid=ImgRaw&r=0" width="500" height="200"></img>
        <form action="Home.jsp"><hr><hr>
             <span style="font-size:25px"> Enter Username:</span><input type="text" name="username" value="" /><br><br>
             <span style="font-size:25px">Enter Password:</span><input type="password" name="password" value="" /><br><br>
             <button class="button"><input type="submit" value="Submit"/></button><br><br>
            <a href="Forgot.jsp" style="font-size:25px">Forgot password😓</a>

         </form>
    </center>
    </body>
</html>
