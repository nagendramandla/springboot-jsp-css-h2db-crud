<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Book Library</title>
    <link href="/css/book.css" rel="stylesheet"/>

<style>
body {font-family: "Times New Roman", Times, serif;}
</style>
</head>
<body>
<table style="width:100%;">
	<tr>
		<td style="text-align: center;"><h2>Book Library</h2></td>
	</tr>
	<tr>
		<td><a href="/new-book"><button type="submit" style="text-align: center;background-color: #4CAF50;border: none;display: inline-block;">Add new book</button></a></td>
	</tr>
	<tr>
		<td>
			<table style="width:100%;">
				<tr>
					<td style="text-color: #4CAF50;"><h3>Book list</h3></td>
				</tr>
				<tr>
					<td>
						<table style="width:100%;">
                        <tr style="background-color: #4CAF50;">
                            <th style="width:25%;">Id</th>
                            <th style="width:25%;">Author</th>
                            <th style="width:25%;">Name</th>
                            <th style="width:25%;">Actions</th>
                        </tr>
                        <c:forEach var="book" items="${books}">
                            <tr>
                                <td>${book.id}</td>
                                <td>${book.author}</td>
                                <td>${book.name}</td>
                                <td>
                                    <table><tr><td>
                                    <a href="/${book.id}"><input type="button" value="Edit" /></a>
                                    <form action="/${book.id}/delete" method="post"><input type="submit" value="Delete" /></form>
                                    </td></tr></table>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</body>
</html>