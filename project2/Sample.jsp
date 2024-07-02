<%-- 
    Document   : Login
    Created on : 1 Feb, 2024, 6:33:38 PM
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
                background-image:url("https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/PDaTSuJ/videoblocks-plexus-abstract-network-white-technology-science-background-loop_sbekjkw7xw_thumbnail-1080_01.png");
            }
            h1{
                 position: relative;
                 animation-name: example;
                 animation-duration: 4s;
                 animation-delay: -2s;
              }

             @keyframes example {
             0%   {background-color:background; left:0px; top:0px;}
             25%  {background-color:background; left:200px; top:0px;}
             50%  {background-color:background; left:200px; top:200px;}
             75%  {background-color:background; left:0px; top:200px;}
             100% {background-color:background; left:0px; top:0px;}
            }
           
        </style>
    </head>
    <body>
    <center>
        <% String n=request.getParameter("name");
        String e=request.getParameter("email");
        String u=request.getParameter("username");
        String p=request.getParameter("password");
        session.setAttribute("user",u);
        session.setAttribute("pass",p);
        session.setAttribute("email",e);
        %>
        <h1 style="font-size:50px">Welcome to our Website, <u><%=n%></u>🤩</h1>
        <b style="font-size:30px">It is really Exiting Journey with you!</b><br><br>
        <a href="https://www.coursera.org/articles/computer-science-internships?utm_source=bg&utm_medium=sem&utm_campaign=B2C_INDIA_google-data-analytics_google_FTCOF_professional-certificates_arte_bing&utm_content=B2C_INDIA_google-data-analytics_google_FTCOF_professional-certificates_arte-agency_bing&campaignid=415452288&adgroupid=1255643580470156&device=c&keyword=coursera&matchtype=b&network=o&devicemodel=&adpostion=&creativeid=&hide_mobile_promo&msclkid=84ac25165da51b6b09b140a81e798011&utm_term=coursera" style="font-size:25px">Learn More about Website</a><br>
        <br>
        <a href="Login.jsp" style="font-size:25px">Login to Home page</a>
    </center>
    </body>
</html>
