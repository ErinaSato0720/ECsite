<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<script type="text/javascript">
			function submitAction(url) {
				$('form').attr('action', url);
				$('form').submit();
			}
		</script>
<title>UserDeleteConfirm画面</title>
</head>
<body>
	<div id="header"></div>
	<div id="main">
		<div id="top">
			<p>UserDeleteConfirm</p>
		</div>
		<div>
			<h3>商品ID[<s:property value = "id"/>]のユーザーを削除します。よろしいですか？</h3>
			<s:form>
				<input id = "button" type = "button" value = "OK" onclick = "submitAction('UserDeleteCompleteAction')"/>
				<input id = "button" type = "button" value = "OK" onclick = "submitAction('UserDetailsAction')"/>
				<s:hidden name = "id" value = "%{id}"/>
			</s:form>
		</div>
		<div id = "footer">
		</div>
	</div>
</body>
</html>

