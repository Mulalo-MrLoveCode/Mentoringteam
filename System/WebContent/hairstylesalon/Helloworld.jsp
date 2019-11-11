<%-- 
    Document   : Helloworld
    Created on : 10 Oct 2019, 11:21:28 AM
    Author     : akally
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%=(new java.util.Date()).toString()%><br>
        <form action="#" method="post">
            <table>
                <tr>
                    <td>number 1</td>
                    <td><input type="text" name="num1"/></td>
                </tr>
                 <tr>
                    <td>number 2</td>
                    <td><input type="text" name="num2"/></td>
                </tr>
                 <tr>
                     <td><button type="submit" name="lol">OK</button></td>
                   
                </tr>
            </table>
        </form>
        <%
            
        String nm=request.getParameter("lol");
        if(nm != null){
        //JOptionPane.showMessageDialog(null, "ssss");
        out.print("sssssssssss");
        }
        
        %>
        <table border="1">
            <thead>
                <tr>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
