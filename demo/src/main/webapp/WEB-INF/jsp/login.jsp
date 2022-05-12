<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>登录</title>

    <!-- 1. 导入CSS的全局样式 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
    <script src="js/jquery-3.2.1.js"></script>
    <!-- 3. 导入bootstrap的js文件 -->
    <script src="js/bootstrap.min.js"></script>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>登录</title>

    <!-- 1. 导入CSS的全局样式 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
    <script src="js/jquery-3.2.1.js"></script>
    <!-- 3. 导入bootstrap的js文件 -->
    <script src="js/bootstrap.min.js"></script>

    <style type="text/css">
        td, th {
            text-align: center;
        }
        body{
            background-color: #9acfea;
        }
    </style>
    <script type="javascript">

    </script>
</head>
<body>
<div class="container" style="width: 400px;">
    <h3 style="text-align: center;">员工管理系统登录</h3>
    <center>
        <form action="/DoLogin" method="post" name="form1" onsubmit="return check()">
            <div class="form-group">
                <label >  员工号：</label>
               <input type="text" name="staffcode" class="form-control"  placeholder="请输入员工号"/>
            </div>
            <br>
            <div class="form-group">
                <label >密码：</label>
                 <input type="password" name="password" class="form-control" placeholder="请输入密码"/>
            </div>
            <div class="form-group" style="text-align: center;">
                <input class="btn btn btn-primary" name="submit" id="submit1" type="submit" value="登录">

            </div>
        </form>
        <!-- 出错显示的信息框 -->
        <div class="alert alert-warning alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert" >
                <span>&times;</span>
            </button>
            <strong>${login_msg}</strong>
        </div>
    </center>

</div>

</body>
<script type="text/javascript">

    function check(){

        if (form1.staffcode.value==""||form1.password.value==""){

            alert("用户名或密码不允许为空 !");

            form1.userName.focus();

            return false;

        }else {
         return  true;

        }



    }

</script>
</html>