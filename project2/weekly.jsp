<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : weekly
    Created on : 6 Feb, 2024, 2:50:24 PM
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
                background-image:url("https://img.freepik.com/premium-vector/lots-colorful-tiny-confetti-ribbons-transparent-background_220217-3295.jpg?w=2000");
            }
        </style>
    </head>
    <body>
    <center>
        <h1>Weekly Task</h1>
        <table border="1">  
            <tbody>  
                <tr>
                    <td>Task Id:</td>
                    <td>Week</td>
                    <td>Description</td>
                </tr>
        <% try
        {
           String i=request.getParameter("tid");
           String w=request.getParameter("about");
           String d=request.getParameter("desk");
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","");
           Statement st=con.createStatement();
           String sq="insert into week(id,week,description)values('"+i+"' , '"+w+"' , '"+d+"')";
           st.executeUpdate(sq);
           ResultSet rs=null;
           String sql="Select * from week";
           rs=st.executeQuery(sql);
           while(rs.next())
           {
               out.print("<tr><td>"+rs.getString("id")+"</td><td>"+rs.getString("week")+"</td><td>"+rs.getString("description")+"</td></tr>");
           }
           con.close();
        }
        catch(Exception e)
        {
            out.print(e);
        }
        %>
            </tbody>
        </table>
            <br><br><br>
            <a href="AdminHome.jsp" style="font-size:30px">Go to the Admin Home Page</a> 
    </center>
    </body>
</html>
