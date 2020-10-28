<%@page import = "java.sql.Timestamp"%>
<%@page import = "java.sql.Statement"%>
<%@page import = "java.sql.DriverManager"%>
<%@page import = "java.sql.Connection"%>
<%@page import = "java.sql.ResultSet"%>
<%@page import = "java.sql.*"%>

<%!
Connection conn=null;
Statement stmt=null;
ResultSet rs=null;

String url="jdbc:mysql://localhost:3306/data";
String uid="root";
String pass="6011";
String sql="select * from tbl";
%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>목록</title>
</head>
<body>
<table width='800' border='1'>
<tr>
	<th>이름</th><th>체온</th><th>연락처</th><th>작성시간</th>
</tr>
<%
	try{
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(url,uid,pass);
		
		stmt=conn.createStatement();
		rs=stmt.executeQuery(sql);
		while(rs.next()){
			out.println("<tr>");
			out.println("<td>"+rs.getString("name")+"</td>");
			out.println("<td>"+rs.getString("temp")+"</td>");
			out.println("<td>"+rs.getString("address")+"</td>");
			out.println("<td>"+rs.getTimestamp("timestamp")+"</td>");
			out.println("</tr>");
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(rs!=null){
				rs.close();
			}
			if(stmt!=null){
				stmt.close();
			}
			if(conn!=null){
				conn.close();
			}	
		}catch(Exception e){
			e.printStackTrace();
		}
	}
%>
</table>
</body>
</html>