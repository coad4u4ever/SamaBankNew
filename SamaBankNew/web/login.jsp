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
        <link rel="stylesheet" href="assets/dist/css/flat-ui.min.css"/>
        <link rel="stylesheet" href="assets/dist/js/flat-ui.js"/>
        <link rel="stylesheet" href="assets/dist/css/vendor/bootstrap.min.css"/>
        <link rel="stylesheet" href="assets/dist/css/login.css"/>
        <link rel="shortcut icon" href="assets/dist/img/icons/icon.jpg" />
        <title>:: SAMA Bank ::</title>
    </head>
    <body style="background-image: url(assets/dist/img/login/bg2.jpg);">
        <div class="container-fluid">
            <div class="form-signin fsi">
                <div style="width:716;height: 220px;">
                    <img src="assets/img/icons/png/LogoSama.png" width="150" style="display: block;margin:auto"/>
                    <h2 class="form-signin-heading" style="text-align: center">Sama Banking</h2>
                    <h4 style="text-align: center">Welcome to Sama Banking, The most secure banking system</h4>
                </div>
                <hr>
                <div style="width:500px;margin: auto">
                    <form action="Login" method="POST">
                        <div class="login-form lif">
                            <div class="form-group">
                                <input type="text" class="form-control login-field" value="" required placeholder="Enter user ID" id="login-name" name="id"/>
                                <label class="login-field-icon fui-user" for="login-name"></label>
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control login-field" value="" required placeholder="Password" id="login-pass" name="password"/>
                                <label class="login-field-icon fui-lock" for="login-pass"></label>
                            </div>
                        </div>
                        <input type="submit" class="btn btn-lg btn-primary btn-block" value="Login"/>
                    </form>
                    <br>
                    Don't have an account? <a href='SignUp'><font size="5"><strong>Sign Up</strong></font></a> here!
                </div>
            </div>
        </div>
    </body>
</html>
