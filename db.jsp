<!DOCTYPE html>
<html lang="ko">
<head>
<%@page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<%@page import="java.sql.*" %>
<%! 
	String host="jdbc:mysql://localhost/test01";
	String user="root";
	String pw="mysql";
	Connection conn;
	Statement stmt;
	String sql="select * from users";
	ResultSet rs;
%>
</head>
<body>
<h1>Hello JSP</h1>
<%
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(host,user,pw);
	stmt = conn.createStatement();
	rs = stmt.executeQuery(sql);

	out.println("<table>");
	while (rs.next()){
		int no = rs.getInt(1);
		String id = rs.getString(2);
		String pw = rs.getString(3);
		String email = rs.getString(4);
		String name = rs.getString(5);
		String gender = rs.getString(6);
		String age = rs.getString(7);

		out.println("<tr>");
		out.println("<td>"+no+"</td>");
		out.println("<td>"+id+"</td>");
		out.println("<td>"+pw+"</td>");
		out.println("<td>"+email+"</td>");
		out.println("<td>"+name+"</td>");
		out.println("<td>"+gender+"</td>");
		out.println("<td>"+age+"</td>");

		out.println("</tr>");
	}
	out.println("</table>");
	out.println("<p>OK</p>");

%>
</body>
</html>
