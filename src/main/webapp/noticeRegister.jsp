<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function register() {
		var frm = document.frm;
		frm.submit();
	}
</script>
</head>
<body>
	<form name="frm" action="/notice" method="post">
		제목 : <input type="text" name="title" value="" /><br />
		내용 : <textarea name="contents" rows="6" cols="10"></textarea>
	</form>
	<input type="button" value="등록" onclick="register()" />
</body>
</html>