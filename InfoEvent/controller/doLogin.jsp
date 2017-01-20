<%@ page import="java.sql.*" %>
<%@ include file="connect.jsp" %>

<%
//controller yang digunakan pada guest untuk login
int online=0;
session.setAttribute("error","");
String email= request.getParameter("email");
String password= request.getParameter("password");
	//validasi username dan password tidak boleh kosong
	if(email.equals("")|| password.equals("")){
		session.setAttribute("error","Must be filled and appropriate with the data in the database");
	}
	//membandingkan data yang di input user dan didatabase apakah sama atau tidak
	String query = "SELECT * FROM member WHERE memberEmail='"+email+"' AND memberPass = '"+password+"' ";

	ResultSet rs = st.executeQuery(query);
	//jika inputan user sama dengan yang didatabase
	if(rs.next()){
	out.println(rs.getString(1));
	out.println(rs.getString(2));
	//membuat session
	session.setAttribute("name",rs.getString("memberName")); 
	session.setAttribute("email",rs.getString("memberEmail"));
	session.setAttribute("role",rs.getString("memberrole"));
	session.setAttribute("memberID",rs.getString("memberID"));
		if(request.getParameter("remember")!=null){
		Cookie cookie1= new Cookie("usernameSession",email);
		cookie1.setMaxAge(60*60*24);
		cookie1.setDomain("localhost");
		cookie1.setPath("/");
		response.addCookie(cookie1);

		}
		//bila checkbox remember tidak di centang akan membuat kosong cookies
		else if(request.getParameter("remember")==null){
			Cookie cookie1= new Cookie("usernameSession",email);
		cookie1.setMaxAge(0);
		cookie1.setDomain("localhost");
		cookie1.setPath("/");
		response.addCookie(cookie1);
		}

		response.sendRedirect("../index.jsp");

	}

	else{
	session.setAttribute("error","Must be filled and appropriate with the data in the database");
		response.sendRedirect("../login.jsp");
	}


%>