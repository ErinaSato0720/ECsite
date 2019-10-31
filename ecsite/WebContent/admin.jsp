<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">

<title>管理者画面</title>

</head>
<body>
	<div id="header">
	</div>
	<div id ="main">
		<div id="top">
			<p>管理者画面</p>
		</div>
			<s:form method = "post" action = "ItemCreateAction">
				<tr>
				<th>商品</th>
				</tr>
				<td><input type="submit" value="商品登録"></td>
			</s:form>
			<s:form method = "post" action = "ItemListAction">
				<td><input type="submit" value="商品一覧"></td>
			</s:form>

			<s:form method = "post" action = "UserCreateAction">
				<tr>
				<th>ユーザー</th>
				</tr>
				<td><input type="submit" value="新規登録"></td>
			</s:form>
			<s:form method = "post" action = "UserListAction">
				<td><input type="submit" value="ユーザー一覧"></td>
			</s:form>
			</div>
	<div id="footer">
	</div>
</body>
</html>