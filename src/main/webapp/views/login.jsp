<%--
  Created by IntelliJ IDEA.
  User: nhoclahola
  Date: 9/16/2024
  Time: 3:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="core" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>

<html>
<head>
    <title>Login Page</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: sans-serif;
            line-height: 1.5;
            min-height: 100vh;
            background: #f3f3f3;
            flex-direction: column;
            margin: 0;
        }

        .main {
            background-color: #fff;
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            padding: 10px 20px;
            transition: transform 0.2s;
            width: 500px;
            text-align: center;
        }

        h1 {
            color: blue;
            font-family: "Century Gothic", ui-monospace;
        }

        label {
            display: block;
            width: 100%;
            margin-top: 10px;
            margin-bottom: 5px;
            text-align: left;
            color: #555;
            font-weight: bold;
        }


        .input-a {
            display: block;
            width: 100%;
            margin-bottom: 15px;
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        button {
            padding: 15px;
            border-radius: 10px;
            margin-top: 15px;
            margin-bottom: 15px;
            border: none;
            color: white;
            cursor: pointer;
            background-color: blue;
            width: 100%;
            font-size: 16px;
            transition: background-color 0.3s, transform 0.3s;
        }

        button:hover {
            background-color: darkblue; 
            transform: scale(1.05);
        }

        .wrap {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .remember-me {
            display: flex;
            align-items: center;
            justify-content: flex-start;
        }

        .remember-me label {
            font-size: 12px;
            cursor: pointer;
        }

        .remember-me input {
            margin-right: 10px;
        }
    </style>
</head>
<body>
<%--<div class="main">--%>
<%--    <h1>LOGIN</h1>--%>
<%--    <h3>Enter your login credentials</h3>--%>
<%--    <h5 style="color: mediumseagreen">--%>
<%--        <%--%>
<%--            // Get notify from session attribute--%>
<%--            Object success = request.getSession().getAttribute("success");--%>
<%--            if (success != null) {--%>
<%--                out.print(success);--%>
<%--                request.getSession().removeAttribute("success");--%>
<%--            }--%>
<%--        %>--%>
<%--    </h5>--%>
<%--    <form action="login" method="POST">--%>
<%--        <label for="username">--%>
<%--            Username:--%>
<%--        </label>--%>
<%--        <input class="input-a" type="text"--%>
<%--               id="username"--%>
<%--               name="username"--%>
<%--               placeholder="Enter your username" required>--%>

<%--        <label for="password">--%>
<%--            Password:--%>
<%--        </label>--%>
<%--        <input class="input-a" type="password"--%>
<%--               id="password"--%>
<%--               name="password"--%>
<%--               placeholder="Enter your password" required>--%>

<%--        <div class="remember-me">--%>
<%--            <input type="checkbox" id="remember" name="remember">--%>
<%--            <label for="remember">Remember me</label>--%>
<%--        </div>--%>


<%--        <div class="wrap">--%>
<%--            <button type="submit"--%>
<%--                    onclick="solve()">--%>
<%--                Login--%>
<%--            </button>--%>
<%--        </div>--%>
<%--    </form>--%>
<%--    <h5 style="color: red">--%>
<%--        <%--%>
<%--            Object alert = request.getAttribute("alert");--%>
<%--            if (alert != null) {--%>
<%--                out.print(alert);--%>
<%--            }--%>
<%--        %>--%>
<%--    </h5>--%>
<%--    <p>--%>
<%--        <a href="forgot-password" style="text-decoration: none;">--%>
<%--            Forgot password?--%>
<%--        </a>--%>
<%--    </p>--%>
<%--    <p>Not registered?--%>
<%--        <a href="register"--%>
<%--           style="text-decoration: none;">--%>
<%--            Create an account--%>
<%--        </a>--%>
<%--    </p>--%>
<%--</div>--%>
<!-- BEGIN CONTENT -->
<div class="col-md-9 col-sm-9">
    <h1>Login</h1>
    <div class="content-form-page">
        <div class="row">
            <div class="col-md-7 col-sm-7">
                <%
                    Object alert = request.getAttribute("alert");
                    if (alert != null) {
                        out.print("<p style=\"color: red\">" + alert + "</p>");
                    }
                %>
                <form class="form-horizontal form-without-legend" role="form" action="${pageContext.request.contextPath}/login" method="POST">
                    <div class="form-group">
                        <label for="username" class="col-lg-4 control-label">Username <span class="require">*</span></label>
                        <div class="col-lg-8">
                            <input type="text" class="form-control" id="username" name="username" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password" class="col-lg-4 control-label">Password <span class="require">*</span></label>
                        <div class="col-lg-8">
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>
                    </div>
                    <div class="margin-left-20">
                            <a href="forgot-password"
                               style="text-decoration: none; color: blue;">
                                Forgot password
                            </a>
                    </div>
                    <div class="row">
                        <div class="col-lg-8 col-md-offset-4 padding-left-0 padding-top-20">
                            <button type="submit" class="btn btn-primary">Login</button>
                        </div>
                    </div>
                    <div class="padding-top-20 margin-left-[60] d-flex">
                        <p>Not registered?
                            <a href="register"
                               style="text-decoration: none; color: blue;">
                                Create an account
                            </a>
                        </p>
                    </div>
                    <div class="row">
                        <div class="col-lg-8 col-md-offset-4 padding-left-0 padding-top-10 padding-right-30">
                            <hr>
                            <div class="login-socio">
                                <p class="text-muted">or login using:</p>
                                <ul class="social-icons">
                                    <li><a href="#" data-original-title="facebook" class="facebook" title="facebook"></a></li>
                                    <li><a href="#" data-original-title="Twitter" class="twitter" title="Twitter"></a></li>
                                    <li><a href="#" data-original-title="Google Plus" class="googleplus" title="Google Plus"></a></li>
                                    <li><a href="#" data-original-title="Linkedin" class="linkedin" title="LinkedIn"></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-4 col-sm-4 pull-right">
                <div class="form-info">
                    <h2><em>Important</em> Information</h2>
                    <p>Duis autem vel eum iriure at dolor vulputate velit esse vel molestie at dolore.</p>

                    <button type="button" class="btn btn-default">More details</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END CONTENT -->
</body>
</html>
