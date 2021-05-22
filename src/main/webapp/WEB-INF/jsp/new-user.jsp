<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="en">
<head>
    <title>Book Library</title>
<style>
body {font-family: "Times New Roman", Times, serif;}

.labelText {
    padding-left: 26px;
    width: 125px;
    display: inline-block;
}
.textField {
    width: 200px;
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
</style>
</head>
<body>
<table style="width:100%;">
    <tr>
        <td style="text-align: center;"><h2>New User</h2></td>
    </tr>
    <tr>
        <td>
            <div>
                <form:form action="/addUser" modelAttribute="user" method="post">
                    <div>
                        <div>
                            <form:label path="userName" class="labelText">User Name: </form:label>
                            <form:input type="text" id="userName" path="userName" class="textField"/>
                            <form:errors path="userName" />
                        </div>
                        <div>
                            <form:label path="password" class="labelText">Password: </form:label>
                            <form:input type="text" id="password" path="password" class="textField"/>
                            <form:errors path="password" />
                        </div>
                        <div>
                            <form:label path="emailId" class="labelText">Email Id: </form:label>
                            <form:input type="text" id="emailId" path="emailId" class="textField"/>
                            <form:errors path="emailId" />
                        </div>
                        <div>
                            <form:label path="phoneNumber" class="labelText">Phone No: </form:label>
                            <form:input type="text" id="phoneNumber" path="phoneNumber" class="textField"/>
                            <form:errors path="phoneNumber" />
                        </div>
                        <div>
                            <input type="submit" value="Add User">
                        </div>
                    </div>
                </form:form>
            </div>
        </td>
    </tr>
</table>
</body>
</html>