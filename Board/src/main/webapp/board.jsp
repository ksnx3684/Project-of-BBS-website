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
	<%@ include file="connection.jsp" %>
	<table>
      <tr>
      <td width="50" align ="center">번호</td>
      <td width ="300" align ="center">제목</td>
      <td width = "100" align ="center">작성자</td>
      <td width = "110" align ="center">작성일</td>
      </tr>
	<%
	ResultSet rs = null;
	Statement stmt = null;
    String sql = "select * from board";
    stmt = conn.createStatement();
	rs = stmt.executeQuery(sql);
	while(rs.next()) {
		int boardID = rs.getInt("boardID");
		String boardTitle = rs.getString("boardTitle");
		String boardname = rs.getString("boardname");
	    String boardDate = rs.getString("boardDate");         
	%>
		<tr>
			<td align ="center"><%=boardID %></td>
			<td align ="center"><a href="view.jsp?idx=<%=boardID%>"><%=boardTitle %></a></td>
			<td align ="center"><%=boardname %></td>
			<td align ="center"><%=boardDate %></td>
		</tr>
	<%
	}
	%>
	</table>
	<button type="button"onclick="location.href= 'wrtie.jsp';">글쓰기</button>	      
</body>
</html>