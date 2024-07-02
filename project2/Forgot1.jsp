<%-- 
    Document   : Forgot1
    Created on : 2 Feb, 2024, 12:34:13 AM
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
    <center>
        <% String email=request.getParameter("email");
        String O=request.getParameter("otp");
        String e=(String)session.getAttribute("mail");
        String username=(String)session.getAttribute("u");
        String password=(String)session.getAttribute("p");
        session.setAttribute("u",username);
        session.setAttribute("p", password);
        String p="ic8";
        if(email.equals(e) && O.equals(p))
                {
                    response.sendRedirect("Forgot2.jsp");
                }
        else
        {
           out.print("<h1>Invalid information🙅‍♀️</h1>");
        }
        %>
    </center>       
    </body>
</html>
