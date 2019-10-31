<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>削除完了画面</title>
</head>
<body>
	<div id="header">
	</div>
	<div id ="main">
		<div id="top">
			<p>UserListDeleteComplete</p>
		</div>
		<div>
		 <h3>削除が完了致しました。</h3>
		 <div>
		 	<a href='<s:url action="AdminAction"/>'>
					管理者画面へ</a>
		 </div>
		</div>
	</div>
</body>
</html>