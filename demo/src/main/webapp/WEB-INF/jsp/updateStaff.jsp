
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>修改员工</title>

    <!-- 1. 导入CSS的全局样式 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
    <script src="js/jquery-3.2.1.js"></script>
    <!-- 3. 导入bootstrap的js文件 -->
    <script src="js/bootstrap.min.js"></script>

</head>
<script type="text/javascript">
    function check(){

        if (form1.staffcode.value==""||form1.name.value==""||
            form1.phone.value==""||form1.address.value==""||form1.depart_name.value==""){

            alert("用户名或密码不允许为空 !");

            form1.userName.focus();

            return false;

        }else {
            return  true;

        }



    }
</script>
<body>
<%@include file="header.jsp"%>
<div class="container-fluid">
    <div class="row">

        <!--左边菜单栏-->
        <%@include file="left.jsp"%>

        <div class="col-sm-10" id="right">
            <ol class="breadcrumb">
                <li class="active">菜单
                </li>
                <li class="active">修改员工
                </li>
            </ol>


            <div class="container">
                <center><h3>修改信息页面</h3></center>
                <form action="${pageContext.request.contextPath}/updateStaff" method="post" id="form1" onsubmit="return check()">
                    <input type="hidden" id="staff_id" name="staff_id" value="${staff.staff_id}" >
                    <div class="form-group">
                        <label for="staffcode">工号：</label>
                        <input type="text" class="form-control" id="staffcode" name="staffcode" placeholder="请输入工号" value="${staff.staffcode}">
                    </div>
                    <div class="form-group">
                        <label for="name">姓名：</label>
                        <input type="text" class="form-control" id="name" name="name" placeholder="请输入姓名" value="${staff.name}">
                    </div>
                    <div class="form-group">
                        <label for="phone">电话：</label>
                        <input type="text" class="form-control" id="phone" name="phone" placeholder="请输入电话" value="${staff.phone}">
                    </div>
                    <div class="form-group">
                        <label for="email">邮箱：</label>
                        <input type="text" class="form-control" id="email" name="email" placeholder="请输入邮箱" value="${staff.email}">
                    </div>

                    <div class="form-group">
                        <label for="address">地址：</label>
                        <select name="address" class="form-control" id="address">
                            <option value="陕西">陕西</option>
                            <option value="北京">北京</option>
                            <option value="上海">上海</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="depart_name">部门：</label>
                        <select name="depart_name" class="form-control" id="depart_name">
                            <option value="研发部">研发部</option>
                            <option value="设计部">设计部</option>
                            <option value="销售部">销售部</option>
                            <option value="人力部">人力部</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="position">职位：</label>
                        <select name="position" class="form-control" id="position">
                            <option value="员工">员工</option>
                            <option value="主管">主管</option>
                            <option value="经理">经理</option>
                            <option value="董事长">董事长</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="remark">备注：</label>
                        <input type="text" class="form-control" id="remark" name="remark" placeholder="请输入备注" value="${staff.remark}">
                    </div>
                    <div class="form-group" style="text-align: center">
                        <input class="btn btn-primary" type="submit" value="提交" />
                        <input class="btn btn-default" type="reset" value="重置" />
                        <input class="btn btn-default" type="button" value="返回" onclick="javascript:history.back(-1);" />
                    </div>
                </form>


            </div>
        </div>
    </div>


</body>


</html>