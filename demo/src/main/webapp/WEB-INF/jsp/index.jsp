<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Dashboard Template for Bootstrap</title>
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="col-sm-12 column">
    <ol class="breadcrumb">
        <li class="active">菜单
        </li>
        <li class="active">产品信息
        </li>
    </ol>
    <table class="table">
        <thead>
        <tr>
            <th>
                编号
            </th>
            <th>
                产品
            </th>
            <th>
                交付时间
            </th>
            <th>
                状态
            </th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>
                1
            </td>
            <td>
                TB - Monthly
            </td>
            <td>
                01/04/2012
            </td>
            <td>
                Default
            </td>
        </tr>
        <tr class="success">
            <td>
                1
            </td>
            <td>
                TB - Monthly
            </td>
            <td>
                01/04/2012
            </td>
            <td>
                Approved
            </td>
        </tr>
        <tr class="error">
            <td>
                2
            </td>
            <td>
                TB - Monthly
            </td>
            <td>
                02/04/2012
            </td>
            <td>
                Declined
            </td>
        </tr>
        <tr class="warning">
            <td>
                3
            </td>
            <td>
                TB - Monthly
            </td>
            <td>
                03/04/2012
            </td>
            <td>
                Pending
            </td>
        </tr>
        <tr class="info">
            <td>
                4
            </td>
            <td>
                TB - Monthly
            </td>
            <td>
                04/04/2012
            </td>
            <td>
                Call in to confirm
            </td>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>