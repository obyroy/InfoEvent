<%
//mendelete session mengembalikan ke page sebelumnya , mengurangi jumlah online user
session.invalidate();
response.sendRedirect("../index.jsp");
%>