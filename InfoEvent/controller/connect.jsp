<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/infoevent", "root","");
	//DriverManager.getConnection("jdbc:mysql://localhost/test", "root","");
	//localhost: untul lab masih localhost
	//test: nama database
	//root: prk(username)
	//password: prk(password)
	Statement st = con.createStatement(1004,1008);
	Statement st1 = con.createStatement(1004,1008);
	Statement st2 = con.createStatement(1004,1008);
	Statement st3 = con.createStatement(1004,1008);

%>