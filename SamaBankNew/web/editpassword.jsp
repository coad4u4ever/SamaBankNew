<%-- 
    Document   : editpassword
    Created on : Dec 10, 2014, 3:11:42 PM
    Author     : coad4u4ever
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags/" prefix="info"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit User</title>
        <link rel="stylesheet" href="assets/dist/css/flat-ui.min.css"/>
        <link rel="stylesheet" href="assets/dist/js/flat-ui.js"/>
        <link rel="stylesheet" href="assets/dist/css/vendor/bootstrap.min.css"/>
        <link rel="shortcut icon" href="assets/dist/img/icons/icon.jpg" />
        <link rel="stylesheet" href="assets/dist/css/menus.css"/>


    </head>
    <body>
        <info:pageHeader title="Edit User"/>
        <div class="container-fluid" align="center" width ="76%" style ="padding: 0;margin: 0 ;border-radius: 100px 100px 0px 0px" >
            <div id="main"style ="border-radius: 10px 10px 0px 0px" >
                <info:navbarmenu activepoint="1"/>
                <form action="EditPassword" method="POST" class="form-group" style ="box-shadow: 2px 6px 68px -9px rgba(0,0,0,0.75);">
                    <h1 class="h1">Edit Password</h1>
                    <!--<label>Account ID: </label><input type="text" name="id" value="Auto Number" readonly class="form-control"/>-->
                    <!--<label>User ID: </label><input type="text" name="accountid" placeholder="Enter User ID" class="form-control"/>-->
                    <p style="text-align: left"><label>Password: </label><input type="password" name="password" placeholder="Enter Password" class="form-control" /></p>
                    <p style="text-align: left"><label>Re-Password: </label><input type="password" name="repassword" placeholder="Enter Password Again" class="form-control"/></p>
                    <%--                        
                    <p style="text-align: left"><label>Branch:</label></p>
                 <select class="form-control" name="branch">
                        <c:forEach var="branch" items="${branch}">
                            <option value="${branch.branchName}">${branch.branchName}</option>
                        </c:forEach>
                    </select>
                    --%>
                    <br><br>
                    <p style="text-align: right"><input type="submit" class="btn btn-primary btn-lg" value="Edit">&nbsp;
                        <%--  <input type="reset" class="btn btn-primary btn-lg" value="Reset">&nbsp; --%>
                        <a onclick="history.back(-1)" ><input type="button" class="btn btn-primary btn-lg" value="Back">&nbsp;</a>
                    </p>
                </form>
            </div>
            <h3 style="color: #c0392b">${msg}</h3>
        </div>
        <info:footer/>
    </body>
</html>
