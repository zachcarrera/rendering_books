<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Read Share</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script defer src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="w-50 mx-auto mt-3">
		<h1>All Books</h1>
		<table class="table">
			<thead>
				<tr>
					<th>ID</th>
					<th>Title</th>
					<th>Language</th>
					<th># Pages</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${books }" var="book" >
					<tr>
						<td><c:out value="${book.id }"/></td>
						<td><a href="/books/${book.id }"><c:out value="${book.title }"/></a></td>
						<td><c:out value="${book.language }"/></td>
						<td><c:out value="${book.numberOfPages }"/></td>
					</tr>
				
				
				</c:forEach>			
			</tbody>
		</table>
	</div>

</body>
</html>