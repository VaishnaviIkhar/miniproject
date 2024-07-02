<%-- 
    Document   : Invalid
    Created on : 1 Feb, 2024, 7:24:14 PM
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
                background-image:url("https://wallpaperset.com/w/full/0/b/6/436129.jpg");
            }
        </style>
    </head>
    <body>
        <% String e=(String)session.getAttribute("email");
        session.setAttribute("mail",e);
        String username=(String)session.getAttribute("u");
        String password=(String)session.getAttribute("p");
        session.setAttribute("u", username);
        session.setAttribute("p", password);
        %>
    <center>
        <h1 style="font-size:50px; height:50px">Forgot Password</h1><hr>
        <form action="Forgot1.jsp">
            <table>  
                <tbody>  
                    <tr><td>Enter E-mail ID:</td><td><input type="text" name="email" value="" /></td></tr>
                    <tr><td>Enter Captcha:</td><td><input type="text" name="otp" value=""/></td><td><img src="https://th.bing.com/th/id/OIP.pxoAQCtxr267X8oyfHFdrQHaFC?rs=1&pid=ImgDetMain" width='150' height="30"></img></td></tr>
                </tbody>
            </table>
                <input type="submit" value="submit" />
        </form>
    </center>
    </body>
</html>
