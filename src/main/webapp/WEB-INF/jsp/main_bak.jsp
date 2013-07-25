<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function syncUserList() {
		var frm = document.mainForm;
		frm.method = "POST";
		frm.action = "/admin/sync/user";
		frm.submit();
	}
	
	function syncUser() {
		var frm = document.mainForm;
		frm.method = "POST";
		frm.action = "/user/sync";
		frm.submit();
	}
</script>
</head>
<body>
	<form name="mainForm">
		<div style="border: 1px solid black; text-align: right;">
			${sessionScope.user_name } <br />
			${sessionScope.user_email } <img src="http://www.google.com${sessionScope.user_photo }" /><br/>
			<input type="button" value="사용자 전체 동기화" onclick="syncUserList()" />
			<input type="button" value="사용자 동기화" onclick="syncUser()" />
		</div>
	</form>
	<table border="1" style="float: left">
		<tr><td colspan="2">조직도</td></tr>
	<c:forEach var="list" items="${orgChart }">
		<tr>
			<td>
				<table>
					<tr>
						<td><img src="http://www.google.com${list.photo }" />${list.familyName }${list.givenName } (${list.primaryEmail })</td>
					</tr>
				</table>
			</td>
		</tr>
	</c:forEach>
	</table>
	
	<table border="1" style="float: left">
		<tr><td>할일</td></tr>
		<c:forEach var="list" items="${task0 }">
			<tr>
				<td>${list.title }</td>
				<td>${list.status }</td>
			</tr>
		</c:forEach>
	</table>
	
	<table border="1" style="float: left">
		<tr><td>문서</td></tr>
		<tr><td style="background-color: gray;">최근문서</td></tr>
		<c:forEach var="list" items="${recentFileList }">
			<tr>
				<td><img src="${list.iconLink }" /><a href="${list.alternateLink }" target="_blank">${list.title }</a></td>
				<td>${list.modifiedDate }</td>
				<td>${list.ownerNames }</td>
				<td>${list.parentsTitle }</td>
			</tr>
		</c:forEach>
		<tr><td style="background-color: gray;">중요문서</td></tr>
		<c:forEach var="list" items="${starredFileList }">
			<tr>
				<td><img src="${list.iconLink }" /><a href="${list.alternateLink }" target="_blank">${list.title }</a>${list.modifiedDate }</td>
			</tr>		
		</c:forEach>
	</table>
	
	<table border="1" style="float: left">
		<tr><td>메일</td></tr>
		<c:forEach var="list" items="${mailList }">
			<tr>
				<td>${list.subject }</td>
				<td>${list.from }</td>
				<td>${list.receivedDate }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>