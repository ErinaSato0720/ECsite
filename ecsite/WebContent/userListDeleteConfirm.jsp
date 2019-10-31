<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

<title>削除確認画面</title>

		<script type="text/javascript">
			function submitAction(url) {
				$('form').attr('action', url);
				$('form').submit();
			}
		</script>

</head>
<body>
	<div id="header"></div>
	<div id="main">
		<div id="top">
			<p>UserListDelete</p>
		</div>
		<div>
			<h3>管理者以外のユーザーを削除します。よろしいですか？</h3>
			<s:form>
				<input id = "button" type = "button" value = "OK" onclick = "submitAction('UserListDeleteCompleteAction')"/>
				<input id = "button" type = "button" value = "キャンセル" onclick = "submitAction('UserListAction')"/>
			</s:form>
		</div>
	</div>
<div id="footer"></div>
</body>
</html>