<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>Hello world</h2>

	<div>
		<table>
			<thead>
				<tr>
					<th>멤버번호</th>
					<th class="id col-6"><a>멤버 id</a></th>
					<th class="created-at">가입일</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${ lists eq null}">


						<tr>
							<td>3</td>
							<td>더미데이터입니다.</td>
							<td><time>2023-04-03</time></td>
						</tr>
						<tr>
							<td>2</td>
							<td>여기보이는회원은</td>
							<td><time>2023-04-03</time></td>
						</tr>
						<tr>
							<td>1</td>
							<td>안녕하세요</td>
							<td><time>2023-04-03</time></td>
						</tr>

					</c:when>
					<c:otherwise>
						<c:forEach var="list" items="${lists }">
							<tr>
								<td>${list.id}</td>
								<td>${list.memberId}</td>
								<td><time>${list.createdAt}</time></td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>

		</table>

	</div>


</body>
</html>