<!DOCTYPE html>
<html>
<head>
    <title>Main page</title>
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

        h3 {
            color: #666;
            text-align: center;
            margin-bottom: 10px;
        }

        form {
            text-align: center;
        }

        input[type="text"],
        input[type="number"] {
            padding: 5px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        input[type="submit"] {
            padding: 5px 10px;
            background-color: #333;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #555;
        }

        a {
            color: #333;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        nav {
            background-color: #333; /* Цвет фона навигационного меню */
            padding: 10px;
            color: #fff; /* Цвет текста в навигационном меню */
        }

        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
        }

        nav ul li {
            float: left;
        }

        nav ul li a {
            display: block;
            padding: 10px 20px;
            color: #fff; /* Цвет текста в ссылках навигационного меню */
            text-decoration: none;
        }

        nav ul li a:hover {
            background-color: #555; /* Цвет фона при наведении на ссылку */
        }

        .school-info {
            text-align: center;
            background-color: #fff;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .custom-file-input {
            display: none;
        }

        .custom-file-label {
            background-color: #555;
            color: #fff;
            padding: 8px 12px;
            border-radius: 4px;
            cursor: pointer;
            display: inline-block;
        }

        .custom-file-input:focus + .custom-file-label {
            outline: dotted;
        }

        .custom-file-input:active + .custom-file-label {
            background-color: #555;
        }

    </style>
</head>
<body>
<nav>
    <ul>
        <li><a href="/">Main page</a></li>
        <li><a href="/about">About Us</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
</nav>

<div class="school-info">
    <h1>LinguaVista</h1>
    <p>Welcome to LinguaVista, a leading language school offering immersive language learning experiences. Our highly skilled instructors and tailored programs provide students with the opportunity to develop their language skills in a supportive and engaging environment. Explore our courses and start your language journey today!</p>
</div>

<hr>

<#if user.email??>
<h3>Your name: <i>${user.name}</i></h3>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Logout"/>
</form>
<#if user.isAdmin()>
    <a href="/admin">Admin page</a>
</#if>
<#else>
<a href="/login">Login</a></h1>
</#if>

<hr>
<h4>All comments</h4>
<form action="/" method="get">
    Search by title: <input type="text" name="title">
        <input type="submit" value="Search"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} Rate | <a href="/product/${product.id}">More information</a></p>
    </div>
<#else>
    <h3>No comments found</h3>
</#list>

<#if user.email??>
    <hr>
    <h3>Write new comment</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        <label for="title">Title:</label>
        <input type="text" name="title" id="title"><br><br>

        <label for="description">Description:</label>
        <input type="text" name="description" id="description"><br><br>

        <label for="price">Rate:</label>
        <input type="number" name="price" id="price"><br><br>

        <label for="city">Address:</label>
        <input type="text" name="city" id="city"><br><br>

        <label for="file1" class="custom-file-label">Select File:</label>
        <input type="file" name="file1" id="file1" class="custom-file-input"><br><br>

        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Add Comment">
    </form>

</#if>

</body>
</html>
