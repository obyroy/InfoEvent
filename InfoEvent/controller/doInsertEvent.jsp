<%@ include file = "connect.jsp" %>
<%
	String name= request.getParameter("eventname");
	String category= request.getParameter("category");
	String place= request.getParameter("place");
	String eventdes= request.getParameter("eventdes");
	String date=request.getParameter("date");
	String image=request.getParameter("image");	

  if(name == null ||name.equals("")){
    response.sendRedirect("../insertEvent.jsp?err=Event name must filled");
  }
  else if(category == null ||category.equals("")){
    response.sendRedirect("../insertEvent.jsp?err=Cartegory must filled");
  }
  else if(!category.equals("workshop")&&!category.equals("other")&&!category.equals("seminar")){
    response.sendRedirect("../insertEvent.jsp?err=Cartegory must fille workshop/other/ seminar (case sensitive) ");
  }
  else if(place == null ||place.equals("")){
    response.sendRedirect("../insertEvent.jsp?err=Event Place must filled");
  }
  else if(eventdes == null ||eventdes.equals("")){
    response.sendRedirect("../insertEvent.jsp?err=Event Description must filled");
  }
  else if(date == null ||date.equals("")){
    response.sendRedirect("../insertEvent.jsp?err=Event date  must filled");
  }
  else if(image=="" || (!image.endsWith(".jpg") && !image.endsWith(".png") && !image.endsWith(".JPG") && !image.endsWith(".PNG")))
    {
    response.sendRedirect("../insertEvent.jsp?err=Must be selected and image extension must be .jpg or .png");
    }

  else{
    st.executeUpdate("INSERT INTO event VALUES (null,'"+name+"', '"+date+"', '"+eventdes+"', '"+image+"','"+category+"','"+place+"')");
    response.sendRedirect("../insertEvent.jsp");
  }
  
%>
