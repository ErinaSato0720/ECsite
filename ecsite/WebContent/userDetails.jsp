<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>UserDetails画面</title>
</head>
<body>
	<div id="header"></div>
	<div id="main">
		<div id="top">
			<p>ItemDetails</p>
		</div>
		<div>
			<s:if test = "itemDetailsDTO == null">
				<h3>ユーザーの詳細情報はありません。</h3>
			</s:if>
			<s:elseif test = "message == null">
				<table border = "1">
					<tr>
						<th>id</th>
						<td><s:property value = "userDetailsDTO.id"/></td>
					</tr>
					<tr>
						<th>ログインID</th>
						<td><s:property value = "userDetailsDTO.loginId"/></td>
					</tr>
					<tr>
						<th>パスワード</th>
						<td><s:property value = "userDetailsDTO.loginPass"/></td>
					</tr>
					<tr>
						<th>ユーザー名</th>
						<td><s:property value = "userDetailsDTO.userName"/></td>
					</tr>
					<tr>
						<th>登録日</th>
						<td><s:property value = "userDetailsDTO.insert_date"/></td>
					</tr>
					<tr>
						<th>更新日</th>
						<td><s:property value = "userDetailsDTO.update_date"/></td>
					</tr>
				</table>
				<s:form action = "UserDeleteConfirmAction">
					<s:hidden name = "id" value = "%{id}"/>
					<s:submit value = "削除"/>
				</s:form>
			</s:elseif>
			<div id = "text-right">
				<p>商品一覧は<a href = '<s:url action = "UserListAction" />'>こちら</a></p>
			</div>
		</div>
		<div id = "footer">
		</div>
	</div>

</body>
</html>