<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Database</title>
</head>
<body>
	<%
		Connection conn = null;
		try {
			String url = "jdbc:mysql://localhost:3306/board";
			String user = "root";
			String password = "723072";
			
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
			out.println("데이터베이스 연결 성공");
		} catch (SQLException ex) {
			out.println("데이터베이스 연결 실패");
			out.println("SQLException: " + ex.getMessage());
		}
	%>
</body>
</html>