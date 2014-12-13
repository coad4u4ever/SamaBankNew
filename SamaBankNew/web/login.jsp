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
        <style>
            body {

               
                background-color: #2ecc71;
                
            }

            .form-signin {
                width: 716px;
                height: 550px;
                padding: 15px;
                margin: 0 auto;
                background-color: #95a5a6;
                margin-top:5%;
                border-radius:8px;

            }
            .form-signin .form-signin-heading,
            .form-signin .checkbox {
                margin-bottom: 10px;
            }
            .form-signin .checkbox {
                font-weight: normal;
            }
            .form-signin .form-control {
                position: relative;
                height: auto;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
                padding: 10px;
                font-size: 16px;
            }
            .form-signin .form-control:focus {
                z-index: 2;
            }
            .form-signin input[type="email"] {
                margin-bottom: -1px;
                border-bottom-right-radius: 0;
                border-bottom-left-radius: 0;
            }
            .form-signin input[type="password"] {
                margin-bottom: 10px;
                border-top-left-radius: 0;
                border-top-right-radius: 0; 
            }

            h1 {
                background-color: black;
                width: 100%;
                margin: inherit;


            }


        </style>
        <title>SAMA Bank</title>
    <body style="background-image: url(assets/img/bg/bg.jpg);">

        <div class="container-fluid">
            <div class="form-signin" style="background-color: rgba(111,111,111,0.5);">
                <div style="width:716;height: 220px;">
                    <img src="assets/img/icons/png/LogoSama.png" width="150" style="display: block;margin:auto"/>
                    <h2 class="form-signin-heading" style="text-align: center">Sama Banking</h2>
                    <h4 style="text-align: center">Welcome to Sama Banking that "High Security"</h4>
                </div>
                <hr>
                <div style="width:500px;margin: auto">
                    <form action="Login" method="POST">
                        <div class="login-form">
                            <div class="form-group">
                                <input type="text" class="form-control login-field" value="" placeholder="Enter user ID" id="login-name" name="id"/>
                                <label class="login-field-icon fui-user" for="login-name"></label>
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control login-field" value="" placeholder="Password" id="login-pass" name="password"/>
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
