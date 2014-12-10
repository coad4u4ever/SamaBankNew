<%-- 
    Document   : login
    Created on : Dec 9, 2014, 9:24:26 PM
    Author     : ning jittima
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/dist/css/flat-ui.min.css"/>
        <link rel="stylesheet" href="assets/dist/js/flat-ui.js"/>
        <link rel="stylesheet" href="assets/dist/css/vendor/bootstrap.min.css"/>
        <style>
            body {
                padding-top: 100px;
                padding-bottom: 100px;
                background-color: #2ecc71;
            }

            .form-signin {
                max-width: 500px;
                padding: 15px;
                margin: 0 auto;
                background-color: #2ecc71;
                border-radius: 10px;
                
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
            
        </style>
        <title>Sama Bank</title>
    </head>
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
