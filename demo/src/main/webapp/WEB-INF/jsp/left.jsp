<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title></title>

    <!-- 1. 导入CSS的全局样式 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
    <script src="js/jquery-3.2.1.js"></script>
    <!-- 3. 导入bootstrap的js文件 -->
    <script src="js/bootstrap.min.js"></script>
    <meta charset="UTF-8">
    <title></title>

</head>
<body><div class="col-sm-2" id="menulist">
    <a href="toIndex" class="list-group-item active">
        <!-- 小图标样式设置 -->
        员工管理</a>
    <a href="/toAddStaff" class="list-group-item  " >
        添加员工 </a>
    <a href="#" class="list-group-item dropdown-men" >
        公司资源管理</a>

        <button  class="dropdown-toggle list-group-item" id="dropdownMenu1" data-toggle="dropdown">日常管理
            <span class="caret"></span>
        </button>
        <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
            <li role="presentation">
                <a role="menuitem" tabindex="-1" href="#">Java</a>
            </li>
            <li role="presentation">
                <a role="menuitem" tabindex="-1" href="#">数据挖掘</a>
            </li>
            <li role="presentation">
                <a role="menuitem" tabindex="-1" href="#">数据通信/网络</a>
            </li>
            <li role="presentation" class="divider"></li>
            <li role="presentation">
                <a role="menuitem" tabindex="-1" href="#">分离的链接</a>
            </li>
        </ul>

</div>
</body>
</html>