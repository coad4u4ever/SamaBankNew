<%-- 
    Document   : signup
    Created on : Dec 10, 2014, 3:11:42 PM
    Author     : ning jittima
--%>

<%@page import="Models.Branch"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags/" prefix="info"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
        <link rel="stylesheet" href="assets/dist/css/flat-ui.min.css"/>
        <link rel="stylesheet" href="assets/dist/js/flat-ui.js"/>
        <link rel="stylesheet" href="assets/dist/css/vendor/bootstrap.min.css"/>
        <style>
            body{
                padding: 100px;
                padding-top: 10px;
                padding-left: 100px;
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
        <info:pageHeader title="Sign Up"/>
        <div class="container-fluid" >
            <form action="SignUp" method="POST" class="form-group">
                <h1 class="h1">Sign Up  <font color="red"> ${msgSave}</font></h1>
                <label>Account ID: </label><input type="text" name="accountid" value="Auto Number" readonly class="form-control"/>
                <label>User ID: </label> <input type="text" name="id" placeholder="Enter User ID" class="form-control" value="${user.id}"/>
                <label>Password: </label><input type="password" name="password" placeholder="Enter Password" class="form-control" value="${user.password}"/>
                <label>Re-Password: </label><font color="red">${msgPassword}</font><input type="password" name="repassword" placeholder="Enter Password Again" class="form-control"/>

                <label>First Name:</label><input type="text" name="fname" placeholder="Enter First Name" class="form-control" value="${user.fname}"/>
                <label>Last Name:</label><input type="text" name="lname" placeholder="Enter Last Name" class="form-control" value="${user.lname}"/>
                <label>Balance:</label><font color="red">${msgBalance}</font><input type="text" name="balance" placeholder="Enter Balance" class="form-control" value="${user.balance}"/>
                <label>Account Type:</label>
                <select class="form-control" name="accounttype">
                    <option value="1" ${user.accountType==1?'selected':''}>Saving Account</option>
                    <option value="2" ${user.accountType==2?'selected':''}>Fixed Deposit Account</option>
                </select>
                <label>Branch:</label>
                <select class="form-control" name="branch">
                    <c:forEach var="branch" items="${branches}">
                        <option value="${branch.branchId}">${branch.branchName}</option>
                    </c:forEach>
                </select>
                <br>
                <input type="submit" class="btn btn-primary btn-lg" value="Sign In">
                <input type="reset" class="btn btn-primary btn-lg" value="Reset">
                <a onclick="history.back(-1)" ><input type="button" class="btn btn-primary btn-lg" value="Back"></a>
            </form>
        </div>
    </body>
</html>
