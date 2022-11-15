<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
</head>
<body>
    <form action="ServletHome" method="post">
        <label for="login">Login</label>
        <input type="text" name="login">
        <label for="password">Senha</label>
        <input type="password" name="password">
      	<input type="submit" value="login">   
    </form>
</body>
</html>
