<%-- 
    Document   : ShowTable
    Created on : 2 Feb, 2024, 10:59:06 AM
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
        <table border="1">
            <thead>
            <h1>Detalis about Registration</h1>
            </thead>
            <tbody>
                <tr>
                    <td><big><b>Title</b></big></td>
        <td><big><b>Start<b></big></td>
                    <td><big><b>End</b></big></td>
                    <td><big><b>Tools</b></big></td>
                    <td><big><b>Manager</b></big></td>
                </tr>
                <%
                    try
                    {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","");
                        Statement st=con.createStatement();
                        ResultSet rs=null;
                        String sql="Select * from registration";
                        rs=st.executeQuery(sql);
                        while(rs.next())
                        {
                            out.print("<tr><td>"+rs.getString("Title")+"</td><td>"+rs.getString("Start")+"</td><td>"+rs.getString("End")+"</td><td>"+rs.getString("Tools")+"</td><td>"+rs.getString("Manager")+"</td></tr>");
                        }
                        con.close();
                    }
                    catch(Exception e)
                    {
                        out.print(e);
                    }
                    %>
                    
            </tbody>
            </table><br><br>
                    <a href="AdminHome.jsp" style="font-size:30px">Go to the Admin Home Page</a>
    </center>
    </body>
</html>
