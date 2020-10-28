<%@page import = "java.sql.Timestamp"%>
<%@page import = "java.sql.ResultSet"%>
<%@page import = "java.sql.PreparedStatement"%>
<%@page import = "java.sql.DriverManager"%>
<%@page import = "java.sql.Connection"%>
<%@page import = "java.sql.Statement"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%! //선언부는 한번만 수행
	Connection conn=null;
	PreparedStatement pstmt=null;
	
	String url="jdbc:mysql://localhost:3306/data";
	String uid="root";
	String pass="6011";
	String sql="insert into tbl values(?,?,?,?)"; //sql문 작성, 동적으로 값을 할당할 때 ?에 채워짐
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>저장 완료</title>
</head>
<body>

<%
request.setCharacterEncoding("UTF-8");

String name = request.getParameter("name");
String temp = request.getParameter("temp");
String address = request.getParameter("address");
Timestamp timestamp = new Timestamp(System.currentTimeMillis());

try{
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url,uid,pass);
	pstmt = conn.prepareStatement(sql); //PrepareStatement 생성

	//바인드 변수로 지정된 매개 변수에 값 설정
	pstmt.setString(1,name); //(int 순서, 실제 데이터나 변수)
	pstmt.setString(2,temp);
	pstmt.setString(3,address);
	pstmt.setTimestamp(4,timestamp);
	pstmt.executeUpdate(); //쿼리문 실행

}catch(Exception e){
	e.printStackTrace();
}finally{
	try{
		if(pstmt!=null){
			pstmt.close(); //쿼리문 종료
		}
		if(conn!=null){
			conn.close();
		}
	}catch(Exception e){
			e.printStackTrace();
	}
}
%>
<h3>저장 완료</h3>

</body>
</html>