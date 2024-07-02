<%-- 
    Document   : FormTable
    Created on : 2 Feb, 2024, 10:17:56 AM
    Author     : vaish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background-image:url("https://wallpaperset.com/w/full/c/6/0/436127.jpg");
            }
        </style>
    </head>
    <body>
        <%
      try
      {
          String t=request.getParameter("title");
          String star=request.getParameter("cal1");
          String end=request.getParameter("cal2");
          String s=request.getParameter("tools");
          String m=request.getParameter("manager");
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","");
          Statement st=con.createStatement();
          String sql="insert into registration(Title,Start,End,Tools,Manager)values('"+t+"' , '"+star+"' , '"+end+"'  , '"+s+"' , '"+m+"')";
          st.executeUpdate(sql);
          out.print("<center><h1>You're Data is inserted Successfully</h1></center>");
          con.close();
      }
      catch(Exception e)
      {
          out.print(e);
      }
      %>
    <center> <a href="AdminHome.jsp" style="font-size:25px">Click Here to Home Page👆</a></center>
    </body>
</html>
