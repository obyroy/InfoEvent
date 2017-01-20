<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.*"%>
<%
	Date data=new Date();
	SimpleDateFormat f= new SimpleDateFormat("yyyy-MM-dd HH:mm:s");
	String dateTime=f.format(data);
	String review=request.getParameter("review");
	String id = request.getParameter("id");

	String query="INSERT INTO review VALUES (null,'"+id+"','"+review+"','"+dateTime+"')";
	st.executeUpdate(query);
	
	response.sendRedirect("../eventDetail.jsp?id="+id);
	
%>