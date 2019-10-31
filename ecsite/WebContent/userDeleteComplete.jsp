<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>UserDeleteComplete画面</title>
</head>
<body>
	<div id="header"></div>
	<div id="main">
		<div id="top">
			<p>UserDeleteComplete</p>
		</div>
		<div>
			<p><s:property value = "message"/></p>
			<div>
				<p><a href = '<s:url action = "AdminAction"/>'>管理者TOP画面へ戻る</a></p>
			</div>
		</div>
		<div id = "footer">
		</div>
	</div>
</body>
</html>