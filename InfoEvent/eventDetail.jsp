<%@ include file="controller/connect.jsp" %>

<%
	String id=request.getParameter("id");
	String query="SELECT * FROM event WHERE eventID='"+id+"'";
	ResultSet rs=st.executeQuery(query);

	String query1="SELECT * FROM review WHERE eventID='"+id+"'";
	ResultSet rs1=st1.executeQuery(query1);
	
%>
<html>
	<head>
		<title>Info Diskon</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->s
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	</head>
	<body>
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<div class="inner">

							<!-- Logo -->
								<a href="index.html" class="logo">
									<span class="symbol"><img src="images/Logo.png" alt="" /></span><span class="title">Info Event</span>
								</a>

							<!-- Nav -->
								<nav>
									<ul>
										<li><a href="#menu">Menu</a></li>
									</ul>
								</nav>

						</div>
					</header>

				<!-- Menu -->
					     <nav id="menu">
            <h2>Menu</h2>
            <ul>
            <%if(session.getAttribute("role")==null){ 
              //jika session null
              %>
              <li><a href="index.jsp">Home</a></li>
              <li><a href="register.jsp">Register</a></li>
              <li><a href="login.jsp">Login</a></li>

              <% 
              }
              //jika session role = admin
              else if(session.getAttribute("role").equals("admin")){
              %>

                <li><a href="index.jsp">Home</a></li>
              <li><a href="insertEvent.jsp">Insert Event</a></li>
              <li><a href="manageEvent.jsp">Manage Event</a></li>
              <li><a href="controller/doLogout.jsp">Logout</a></li>
            <%
              }
            

            else if(session.getAttribute("role").equals("member")){
              %>
                
                <li><a href="index.jsp">Home</a></li>
              <li><a href="#">Cartegory</a></li>
              <ul>
                <li><a href="workshop.jsp">WorkShop</a></li>
                <li><a href="seminar.jsp">Seminar</a></li>
                <li><a href="other.jsp">Other</a></li>
              </ul>
              <li><a href="calender.jsp">Calender</a></li>
              <li><a href="register.jsp">Review Event</a></li>
              <li><a href="controller/doLogout.jsp">Logout</a></li>
            <%
              }
            %>
            </ul>
          </nav>

				<!-- Main -->
					
						<div class="detail" style="font-family: calibri;font-size: 20px;">
						<% while(rs.next()){%>
							<h1><%=rs.getString("EventName")%></h1>
							<span class="image main"><img src="<%=rs.getString("EventImage")%>" alt="" /></span>
							<div>Event Description:</div>
							<p><%=rs.getString("EventDes")%></p>
							<div>Event Place:</div>
							<p><%=rs.getString("EventPlace")%></p>
							<div>Event Date:</div>
							<p><%=rs.getString("EventDate")%></p>
							<div style="font-family: verdana;font-size: 30px;">Review</div>
						<% while(rs1.next()){ %>

						<div style="margin-left: 10px;margin-bottom: 30px;">

							<div><%=rs1.getString("reviewDes")%></div>
							<div><%=rs1.getString("reviewDate")%></div>
						</div>

						<% } %>

						<form method="POST" action="controller/doReview.jsp?id=<%=rs.getString("eventID")%>">
						<textarea name="review" placeholder="Review Event"></textarea>
						<button>Review</button>
						<% } %>

					
						</form>
						</div>
					


				<!-- Footer -->
					<footer id="footer">
						<div class="inner">
							<section>
								<h2>Get in touch</h2>
								<form method="post" action="#">
									<div class="field half first">
										<input type="text" name="name" id="name" placeholder="Name" />
									</div>
									<div class="field half">
										<input type="email" name="email" id="email" placeholder="Email" />
									</div>
									<div class="field">
										<textarea name="message" id="message" placeholder="Message"></textarea>
									</div>
									<ul class="actions">
										<li><input type="submit" value="Send" class="special" /></li>
									</ul>
								</form>
							</section>
							<section>
								<h2>Follow</h2>
								<ul class="icons">
									<li><a href="#" class="icon style2 fa-twitter"><span class="label">Twitter</span></a></li>
									<li><a href="#" class="icon style2 fa-facebook"><span class="label">Facebook</span></a></li>
									<li><a href="#" class="icon style2 fa-instagram"><span class="label">Instagram</span></a></li>
									<li><a href="#" class="icon style2 fa-dribbble"><span class="label">Dribbble</span></a></li>
									<li><a href="#" class="icon style2 fa-github"><span class="label">GitHub</span></a></li>
									<li><a href="#" class="icon style2 fa-500px"><span class="label">500px</span></a></li>
									<li><a href="#" class="icon style2 fa-phone"><span class="label">Phone</span></a></li>
									<li><a href="#" class="icon style2 fa-envelope-o"><span class="label">Email</span></a></li>
								</ul>
							</section>
							<ul class="copyright">
								<li>&copy; Untitled. All rights reserved</li><li>Design: <a href="http://html5up.net">Info Event Company</a></li>
							</ul>
						</div>
					</footer>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	</body>
</html>