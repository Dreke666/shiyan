<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>主页</title>

    <!-- 1. 导入CSS的全局样式 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
    <script src="js/jquery-3.2.1.js"></script>
    <!-- 3. 导入bootstrap的js文件 -->
    <script src="js/bootstrap.min.js"></script>

</head>
<script type="text/javascript">
    function deleteStaff(id) {
        if(confirm("您确定要删除吗？")){
            //访问路径
            location.href="${pageContext.request.contextPath}/deleteStaffByStaff_id?staff_id="+id;
        }
    };

    function updateStaff(id) {

            location.href="${pageContext.request.contextPath}/updateStaffByStaff_id?staff_id="+id;
    };
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
                <li class="active">用户信息
                </li>
            </ol>


            <!--
                列表展示
            -->
            <div class="table-responsive">
                    <table border="1" class="table table-bordered table-hover table-striped">
                        <tr class="success">
                            <th>工号</th>
                            <th>姓名</th>
                            <th>电话</th>
                            <th>邮箱</th>
                            <th>地址</th>
                            <th>部门</th>
                            <th>职位</th>
                            <th>备注</th>
                            <th>操作</th>
                        </tr>
                        <c:forEach var="staff" items="${pageInfo.list}" varStatus="s">
                        <tr>

                            <td>${staff.staffcode}</td>
                            <td>${staff.name}</td>
                            <td>${staff.phone}</td>
                            <td>${staff.email}</td>
                            <td>${staff.address}</td>
                            <td>${staff.depart_name}</td>
                            <td>${staff.position}</td>
                            <td>${staff.remark}</td>
                            <td><a class="btn btn-default btn-sm" href="javascript:updateStaff(${staff.staff_id});">修改</a>&nbsp;
                                <a class="btn btn-default btn-sm" href="javascript:deleteStaff(${staff.staff_id});">删除</a>
                            </td>
                        </tr>
                        </c:forEach>
                    </table>
            </div>

        </div>
    </div>
</div>


</body>


</html>