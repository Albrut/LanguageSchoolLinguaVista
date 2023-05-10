<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
    <style>
    body {
    font-family: Arial, sans-serif;
    font-size: 16px;
    line-height: 1.5;
    margin: 0;
    padding: 0;
    }

    h1 {
    font-size: 2em;
    margin-bottom: 0.5em;
    }

    h4 {
    font-size: 1.5em;
    margin-bottom: 0.5em;
    }

    form {
    margin-top: 1em;
    }

    form label {
    display: block;
    margin-bottom: 0.5em;
    }

    form input[type="text"],
    form input[type="email"],
    form input[type="password"] {
    width: 100%;
    padding: 8px;
    font-size: 1em;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-bottom: 1em;
    }

    form input[type="submit"] {
    background-color: #555;
    color: #fff;
    padding: 8px 12px;
    border: none;
    border-radius: 4px;
    font-size: 1em;
    cursor: pointer;
    }

    form input[type="submit"]:hover {
    background-color: #555;
    }

    h2 {
    color: red;
    }
    </style>
</head>
<body>
<h1>Registration</h1><hr>
<h4></h4>
<form action="/registration" method="post">
    Username <input type="text" name="name"><br><br>
    Email: <input type="email" name="email"><br><br>
    Phone number: <input type="text" name="phoneNumber"><br><br>
    Password: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Register"/>
</form>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>