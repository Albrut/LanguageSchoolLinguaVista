<!DOCTYPE html>
<html>
<head>
    <title>More information about it</title>
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

        img {
            display: block;
            margin-bottom: 10px;
        }

        b {
            font-weight: bold;
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
    </style>
</head>
<body>
<h1>Comment</h1><hr>
<nav>
    <ul>
        <li><a href="/">Main page</a></li>
        <li><a href="/about">About Us</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
</nav>
<img src="/images/${product.getPreviewImageId()}">
<b>Title of the comment: </b>${product.title}<br>
<b>Description of the comment: </b>${product.description}<br>
<b>Rate: </b>${product.price}<br>
<b>Address: </b>${product.city}<br>
<b>Author: </b><a href="/user/${product.user.id}">${product.user.name}</a><br>
</body>
</html>