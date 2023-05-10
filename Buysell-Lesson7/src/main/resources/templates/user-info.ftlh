<!DOCTYPE html>
<html>
<head>
    <title>User info</title>
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

        h3 {
            font-size: 1.5em;
            margin-bottom: 0.5em;
        }

        h4 {
            font-size: 1.2em;
            margin-bottom: 0.5em;
        }

        p {
            margin: 0;
        }

        a {
            color: blue;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        li {
            margin-bottom: 0.5em;
        }

        div.comment {
            border: 1px solid #ccc;
            padding: 0.5em;
            margin-bottom: 1em;
        }

        div.comment img {
            height: 60px;
            margin-right: 0.5em;
            vertical-align: middle;
        }

        div.comment h3 {
            margin-bottom: 0.5em;
        }

        div.comment p {
            margin-bottom: 0.5em;
        }

        form {
            margin-top: 1em;
        }

        form label {
            margin-right: 1em;
        }

        form button {
            margin-top: 1em;
        }

    </style>
</head>
<body>
<h1>Information</h1><hr>
<h3>Information about ${user.name}</h3>
<b>Phone number: </b> ${user.phoneNumber}<br>
<b>Email: </b> ${user.email}<br>
<h4>user comments ${user.name}</h4>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} rate | <a href="/product/${product.id}">More information</a></p>
    </div>
    <#else>
    <h3>No comments</h3>
</#list>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>