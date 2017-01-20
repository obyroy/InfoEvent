<%
	//mengambil data err di setiap link jika ada error atau salah input
 if(request.getParameter("err") != null){ %>
    <h2>
        <%= request.getParameter("err") %>
    </h2>
<% } %>