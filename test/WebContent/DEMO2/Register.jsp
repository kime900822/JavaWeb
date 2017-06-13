<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册结果</title>
</head>
<body>
<%
	String reqUsername=request.getParameter("username");
	String reqPassword=request.getParameter("password");
	String url="jdbc:sqlserver://118.89.188.239:1433;DatabaseName=TEST";
	String username="sa";
	String password="zzh.900822";
	Connection conn=null;
	PreparedStatement pstmt=null;
	int i=0;
	
	try{
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		conn=DriverManager.getConnection(url,username,password);
		String sql="insert into T_USER (username,password) values(?,?)";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, reqUsername);
		pstmt.setString(2, reqPassword);
		if(!reqUsername.isEmpty()&&!reqPassword.isEmpty()){
			i=pstmt.executeUpdate();		
		}else{
			out.print("用户名和密码不能为空");
		}
		
		if(i==1){
			out.print("注册成功");			
		}else{
			out.print("注册失败");
			
		}
	}
	catch(Exception e){
		out.println(e.getMessage());	
		out.println("注册失败");
		e.printStackTrace();
	}

	
	try{
		if(pstmt!=null){
			pstmt.close();			
		}
		if(conn!=null){
			conn.close();			
		}
	}catch(Exception e){
		e.printStackTrace();		
	}
%>
</body>
</html>