<%-- 
    Document   : login
    Created on : Dec 9, 2014, 9:24:26 PM
    Author     : ning jittima
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags/" prefix="info"%>
<!DOCTYPE html>
<html>
    <head>
        <info:pageHeader title="SAMA Bank"/>
    <body>
        <div class="container-fluid">
            <div class="form-signin">
                <h2 class="form-signin-heading">Sama Banking</h2>
                <form action="login" method="POST">
                    <div class="login-form">
                        <div class="form-group">
                            <input type="text" class="form-control login-field" value="" placeholder="Enter user ID" id="login-name" name="accountId"/>
                            <label class="login-field-icon fui-user" for="login-name"></label>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control login-field" value="" placeholder="Password" id="login-pass" name="password"/>
                            <label class="login-field-icon fui-lock" for="login-pass"></label>
                        </div>
                    </div>
                    <label>
                        <input type="checkbox" name="remember"/> Remember Me
                    </label>

                    <input type="submit" class="btn btn-lg btn-primary btn-block" value="Login"/>
                </form>
                Don't have an account? <a href='signup'>Sign Up</a> here!
            </div>
        </div>
    </body>
</html>
