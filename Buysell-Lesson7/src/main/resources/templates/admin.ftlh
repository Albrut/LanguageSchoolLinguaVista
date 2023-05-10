<!DOCTYPE html>
<html>
<head>
    <title>Admin-page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 20px;
        }

        h1 {
            color: #333;
            text-align: center;
        }

        hr {
            border: none;
            border-top: 2px solid #ccc;
            margin: 20px 0;
        }

        h4 {
            color: #666;
            margin-bottom: 10px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
        }

        th {
            padding: 10px;
            text-align: left;
            background-color: #f2f2f2;
            border-bottom: 1px solid #ccc;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        td {
            padding: 10px;
            border-bottom: 1px solid #ccc;
        }

        a {
            color: #333;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        h3 {
            color: #666;
            text-align: center;
            margin-top: 20px;
        }

    </style>
</head>
<body>
<h1>Admin-Panel</h1>
<hr>
<h4>List of information</h4>
<table border="1">
    <tr>
        <th>Email</th>
        <th>Phone number</th>
        <th>Activity</th>
        <th>Roles</th>
        <th>Ban</th>
        <th>Edit roles</th>
        <th>More information</th>
    </tr>
    <#list users as user>
        <tr>
            <th>${user.email}</th>
            <th>${user.phoneNumber}</th>
            <th><#if user.active>true<#else>false</#if></th>
            <th><#list user.roles as role>${role}</#list></th>
            <th>
                <form action="/admin/user/ban/${user.id}" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" value="Бан">
                </form>
            </th>
            <th><a href="/admin/user/edit/${user.id}">Edit roles</a></th>
            <th><a href="/user/${user.id}">More information</a></th>
        </tr>
    <#else>
        <h3></h3>
    </#list>
</table>
</body>
</html>