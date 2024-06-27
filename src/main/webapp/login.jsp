<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登录</title>
    <!--引入layui样式表文件-->
    <link rel="stylesheet" type="text/css" href="layui/css/layui.css">
    <link tyoe="text/css" rel="stylesheet" href="layui/css/bd.css">
</head>
</head>
<body>
            <div class="bg1">
                <section>


                    <div class="box">

                        <div class="square" style="--i:0;"></div>

                        <div class="square" style="--i:1;"></div>

                        <div class="square" style="--i:2;"></div>

                        <div class="square" style="--i:3;"></div>

                        <div class="square" style="--i:4;"></div>

                        <div class="container">

                            <div class="form">

                                <h2>Login Form</h2>

                                <form method="post" action="Login" onsubmit="return validateForm();" id="loginForm">

                                    <div class="inputBox">

                                        <input type="text" placeholder="Username" id="username" required>
                                        <span id="usernameMsg"></span>

                                    </div>

                                    <div class="inputBox">

                                        <input type="password" placeholder="Password" id="password" required>
                                        <span id="passwordMsg"></span>

                                    </div>

                                    <div class="inputBox">

                                        <input type="submit" lay-submit lay-filter="formDemo" value="Login">

                                    </div>

                                    <p class="forget">忘记密码 ？<a href="#">Chick Here</a></p>

                                    <p class="forget">没有账号 ？<a href="#">Sign up</a></p>

                                </form>

                            </div>

                        </div>

                    </div>

                </section>
            </div>
            <script>

                function validateForm() {
                    //正则验证

                    var username = document.getElementById("username").value;
                    var password = document.getElementById("password").value;

                    var usernameReg = /^[a-zA-Z0-9_-]{4,16}$/;
                    var passwordReg = /^[a-zA-Z0-9_-]{6,16}$/;

                    if (!usernameReg.test(username)) {

                        usernameMsg.innerHTML = "用户名格式错误";
                        return false;
                    }

                    if (password.length < 6||!passwordReg.test(password)) {

                        passwordMsg.innerHTML = "密码长度不能小于6位";
                        return false;
                    }

                    return true;
                }
            </script>



</body>
<footer>
    <div class="layui-row">
        <hr class="layui-bg-gray">
        <center><p style="color: white;"><i class="layui-icon layui-icon-auz"></i> copy @xawl.jk2201.com</p></center>
    </div>
</footer>
</html>
