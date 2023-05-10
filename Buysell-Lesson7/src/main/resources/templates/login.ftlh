
<!DOCTYPE html>
<html>
<head>
    <title>login-page</title>
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
            text-align: center;
            font-weight: bold;
            text-transform: uppercase;
        }

        form {
            width: 300px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
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
            display: block;
            text-align: center;
            margin-top: 10px;
        }

        a:hover {text-decoration: underline;
            font-weight: bold;
        }

        a.register-link {
            color: #fff;
            background-color: #333;
            padding: 10px;
            border-radius: 5px;
            display: inline-block;
            text-decoration: none;
            margin-top: 20px;
            text-align: center;
        }

        a.register-link:hover {
            background-color: #555;
        }

        h4.authorization-title {
            font-size: 18px;
            margin-bottom: 20px;
            text-align: center;
            text-transform: uppercase;
            color: #333;
        }





    </style>
</head>
<body>
<h1>Please login</h1><hr>
<h4>Authorization</h4>
<form action="/login" method="post">
    Email: <input type="email" name="username"><br><br>
    Password: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Login"/>
</form>
<a class="register-link" href="/registration">Register</a>
</body>
</html>