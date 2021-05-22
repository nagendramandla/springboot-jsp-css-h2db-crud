<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Login</title>
    <link href="/css/book.css" rel="stylesheet"/>
<style>
body {font-family: "Times New Roman", Times, serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

.center {
  margin-left: auto;
  margin-right: auto;
  width: 30%;
}
</style>
</head>
<body>
<table class="center">
    <tr>
        <td style="text-align: center;"><h2>Welcome to Book World</h2></td>
    </tr>
    <tr>
        <td>
            <form:form action="/login" modelAttribute="user" method="post">
                <div class="imgcontainer"><img src="https://images.assetsdelivery.com/compings_v2/brokenhill/brokenhill1801/brokenhill180100193.jpg" alt="Avatar" class="avatar"></div>
                <div class="container">
                    <form:label path="userName">User Name</form:label>
                    <form:input type="text" id="userName" path="userName" placeholder="Enter Username"/>
                    <form:errors path="userName" />
                    <form:label path="password">Password</form:label>
                    <form:input type="password" id="password" path="password" placeholder="Enter Password"/>
                    <form:errors path="password" />
                    <div stype="text-color: red;">${errorMessage}</div>
                    <button type="submit">Login</button>
                    <span style="text-align:right;">Not a Member <a href="/new-user">Signup now</a></span>
                </div>
            </form:form>
        </td>
    </tr>
</table>
</body>
</html>