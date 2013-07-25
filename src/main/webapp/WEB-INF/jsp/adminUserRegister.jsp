<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function userInsert() {
		var frm = document.adminUserRegiterFrm;
		frm.action = "/admin/user/insert";
		frm.submit();
	}
</script>
</head>
<body>
<form name="adminUserRegiterFrm" method="post">
	이메일 : <input type="text" name="primaryEmail" value="" /><br />
	성 : <input type="text" name="familyName" value="" /><br />
	이름 : <input type="text" name="givenName" value="" /><br />
	비밀번호 : <input type="password" name="password" value="" /><br />
</form>
	<button onclick="userInsert();">등록</button>
</body>
</html>