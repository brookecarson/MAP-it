<%--
  Created by IntelliJ IDEA.
  User: MJ
  Date: 2/25/2022
  Time: 12:05 PM
--%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <link rel="stylesheet" type="text/css" href="css/styleAdmin.css">
    <link rel="shortcut icon" href="images/MAP-logo.jpg">

</head>
<body>
<div>
    <h1>Admin Login</h1>
    <form method="post" onsubmit="return validateLogin()" action="adminlogin">
        <label for="username"></label><input type="text" name="username" id="username" placeholder="Username">
        <label for="password"></label><input type="password" name="password" id="password" placeholder="Password">
        <div class="col-lg-12 text-center">
            <div id="success"></div>
            <button type="submit" value="submit" class="btn btn-primary">Login</button>
        </div>
    </form>
</div>


<script src="js/admin_validate.js"></script>

</body>
</html>
