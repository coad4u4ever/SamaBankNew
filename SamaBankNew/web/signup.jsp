<%-- 
    Document   : signup
    Created on : Dec 10, 2014, 3:11:42 PM
    Author     : ning jittima
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="assets/dist/css/flat-ui.min.css"/>
        <link rel="stylesheet" href="assets/dist/js/flat-ui.js"/>
        <link rel="stylesheet" href="assets/dist/css/vendor/bootstrap.min.css"/>
        <style>
            body{
                padding: 100px;
                padding-left: 300px;
                background-color: #2ecc71;
            }
            .form-group{
                max-width: 600px;
                padding: 20px;
                border-radius: 15px;
                background-color: #ecf0f1;
            }
        </style>
    </head>
    <body>
        <div class="container-fluid">
            
            <form action="signup" method="POST" class="form-group">
                <h1 class="h1">Sign Up Account</h1>
                <label>Account ID: </label><input type="text" name="id" value="Auto Number" readonly class="form-control"/>
                <label>User ID: </label><input type="text" name="accountid" placeholder="Enter User ID" class="form-control"/>
                <label>Password: </label><input type="password" name="password" placeholder="Enter Password" class="form-control"/>
                <label>Re-Password: </label><input type="password" name="Repassword" placeholder="Enter Password Again" class="form-control"/>
                
                <label>First Name:</label><input type="text" name="fname" placeholder="Enter First Name" class="form-control"/>
                <label>Last Name:</label><input type="text" name="lname" placeholder="Enter Last Name" class="form-control"/>
                <label>Balance:</label><input type="text" name="balance" placeholder="Enter Balance" class="form-control"/>
                <label>Account Type:</label>
                    <select class="form-control" name="accounttype">
                        <option value="saving">Saving Account</option>
                        <option value="fixed">Fixed Deposit Account</option>
                    </select>
                <label>Branch ID:</label>
                    <select class="form-control" name="accounttype">
                        <c:forEach var="branch" items="${branch}">
                        <option value="${branch.branchName}">${branch.branchName}</option>
                        </c:forEach>
                    </select>
                <input type="submit" class="btn btn-primary btn-lg" value="Sign In">
            </form>
        </div>
    </body>
</html>
