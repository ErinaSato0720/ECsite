<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>BuyItemComplete画面</title>

</head>
<body>
	<div id="header">
	</div>
	<div id ="main">
		<div id="top">
			<p>BuyItemComplete</p>
		</div>
		<div>
			<h3>購入手続きが完了致しました。</h3>
			<div>
				<a href='<s:url action="MyPageAction"/>'>
					マイページ</a><span>から購入履歴の確認が可能です。</span>
			<p>Homeへ戻る場合は
				<a href='<s:url action="GoHomeAction"/>'>
					こちら</a></p>
			</div>
		</div>
	</div>
	<div id="footer">
	</div>
</body>
</html>