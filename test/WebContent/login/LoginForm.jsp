<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
</head>
<body>
<center>
	<form action="LoginConf.jsp" method="post">
	<table>
		<tr>
			<td colspan="2" style="text-align:center;">用户登录</td>
		</tr>
		<tr>
			<td>用户名</td>
			<td><input type="text" name="username"></td>
		</tr>
		<tr>
			<td>密码名</td>
			<td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td colspan="2" style="text-align:center;">
			<input type="submit" name="登录">
			<input type="reset" name="取消">
			</td>
		</tr>
	</table>
	</form>
</center>
</body>
</html>