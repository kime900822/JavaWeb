<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@ page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>连接SQlserver</title>
</head>
<body>
<%
	try{
		//加载JDBC
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		Connection conn=DriverManager.getConnection("jdbc:sqlserver://118.89.188.239:1433;DatabaseName=DB_MONEY","sa","zzh.900822"); 
		Statement statement=conn.createStatement();
		//PreparedStatement pstmt=conn.prepareStatement();
		
		
	}catch(ClassNotFoundException e){
		out.print("找不到驱动类");
		
	}catch(Exception e){
		out.print(e.getMessage());	
	}
	

%>
</body>
</html>