<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">

<title>ユーザー一覧画面</title>
</head>
<body>
	<div id="header"></div>
	<div id="main">
		<div id="top">
			<p>ItemList</p>
		</div>
		<div>
			<table border = "1">
			<tr>
				<th>ID</th>
				<th>ログインID</th>
				<th>パスワード</th>
				<th>ユーザー名</th>
				<th>登録日</th>
				<th>更新日</th>
			</tr>
			<s:iterator value = "itemInfoDTOList">
			<tr>
				<td><s:property value = "id" /></td>
				<td><s:property value = "loginId" /></td>
				<td><s:property value = "loginPassword" /></td>
				<td><s:property value = "userName" /></td>
				<td><s:property value = "insert_date" /></td>
				<td><s:property value = "update_date" /></td>
				<td><a href = '<s:url action = "UserDetailsAction">
						<s:param name = "id" value = "%{id}"/>
						</s:url>'>詳細</a>
			</tr>
			</s:iterator>
			</table>
			<s:form action = "UserListDeleteConfilmAction">
				<s:submit value = "削除" />
			</s:form>
		</div>
		<div id="text-right">
				<p>
					管理人画面へ戻る場合は<a href='<s:url action="AdminAction"/>'>こちら</a>
				</p>
				<p>
					ログアウトする場合は<a href='<s:url action="LogoutAction"/>'>こちら</a>
				</p>
			</div>
	</div>
	<div id="footer"></div>
</body>
</html>