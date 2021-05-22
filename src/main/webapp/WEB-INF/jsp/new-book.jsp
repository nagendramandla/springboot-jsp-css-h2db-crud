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
    width: 305px;
}
</stle>

</head>
<body>
<table style="width:100%;">
    <tr>
        <td style="text-align: center;"><h2>New User</h2></td>
    </tr>
    <tr>
        <td>
            <div>
                <form:form action="/add" modelAttribute="book" method="post">
                    <div>
                        <div>
                            <form:label path="author" class="labelText">Author</form:label>
                            <form:input type="text" id="author" path="author" class="textField"/>
                            <form:errors path="author" />
                            <form:label path="name" class="labelText">Name</form:label>
                            <form:input type="text" id="name" path="name" class="textField"/>
                            <form:errors path="name" />
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