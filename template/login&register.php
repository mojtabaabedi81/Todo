<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>CodePen - Sign up / Login Form</title>
    <link rel="stylesheet" href="style_login.css">

</head>
<body>
<!DOCTYPE html>
<html>
<head>
    <title>Slide Navbar</title>
    <link rel="stylesheet" type="text/css" href="../assets/login_register.css">
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
</head>
<body>
<div class="main">
    <input type="checkbox" id="chk" aria-hidden="true">

    <div class="signup">
        <form action="./register" method="post">
            <label for="chk" aria-hidden="true">Sign up</label>
            <input type="text" name="name" placeholder="User name" required="">
            <input type="email" name="email" placeholder="Email" required="">
            <input type="hidden" name="registerRequest" value="1">
            <input type="password" name="password" placeholder="Password" required="">
            <button type="submit" name="submit">Sign up</button>
        </form>
    </div>

    <div class="login">
        <form action="./login" method="post">
            <label for="chk" aria-hidden="true">Login</label>
            <input type="email" name="email" placeholder="Email" required="">
            <input type="password" name="password" placeholder="Password" required="">
            <input type="hidden" name="loginRequest" value="1">
            <button type="submit">Login</button>
        </form>
    </div>
</div>
</body>
</html>
</body>
</html>
