<%@ include file = "connect.jsp" %>
<%
	//contoller yang digunakan untuk validasi register untuk guest yang ingin menjadi member
	boolean f=false;
	boolean p=false;
	boolean k=false;
	boolean a=false;
	boolean c=false;
	boolean d=false;
	String name= request.getParameter("name");
	String email= request.getParameter("email");
	String pass= request.getParameter("password");
	String cpass= request.getParameter("cpass");
	int atpos = email.indexOf("@");
    int dotpos = email.lastIndexOf(".");

    //check huruf di password
    if(pass.length()>0){
		for(int i=0;i<pass.length();i++){
			if(Character.isLetter(pass.charAt(i))){
				k=true;break;
			}
			else{
				k=false;
			}
		}
	}
	//check angka di password
	if(pass.length()>0){
		for(int i=0;i<pass.length();i++){
			if(Character.isDigit(pass.charAt(i))){
				f=true;break;
			}
			else{
				f=false;
			}
		}
	}
	//check huruf besar di password
	if(pass.length()>0){
		for(int i=0;i<pass.length();i++){
			if(Character.isUpperCase(pass.charAt(i))){
				a=true;break;
			}
			else{
				a=false;
			}
		}
	}

	//check huruf di fullname
	if(name.length()>0){
	for(int i=0;i<name.length();i++){
			if(Character.isLetter(name.charAt(i))){
				c=true;break;
			}
			else{
				c=false;
			}
		}
	}
	//validasi fullname jika kosong
	if(name == null || name.equals("")){
		response.sendRedirect("../register.jsp?err=Full Name must be filled");

	}
	//validasi fullname panjang huruf harus antara 4 sampai 20
	else if(name.length()<4||name.length()>20){
		response.sendRedirect("../register.jsp?err=Full Name must be between 4 and 20");
	}
	//validasi jika fullname ada angka
	else if(c==false){
		response.sendRedirect("../register.jsp?err=Full Name must alphabhet");	
	}
	//validasi jika email kosong
	else if(email == null || email.equals("")){
		response.sendRedirect("../register.jsp?err=Email must be filled");
	}
	//validasi email yang sesuai template email
	else if(atpos<1 || dotpos<atpos+2 || dotpos+2>=email.length() ){
		response.sendRedirect("../register.jsp?err=Email invalid");
	}
	//validasi pass jika kosong
	else if(pass == null || pass.equals("")){
		response.sendRedirect("../register.jsp?err=Password must be filled");
	}
	//validasi password harus 7 sampai 15
	else if(pass.length()<7||pass.length()>15){
		response.sendRedirect("../register.jsp?err=Password must between 7 and 15");
	}
	//validasi password harus alphanumeric dan ada uppercase dan lowercase
	else if(f==false||a==false||k==false){
		response.sendRedirect("../register.jsp?err=Password must have 1 uppercase,1 lower case,1 number and password between 7 and 15");
	}
	//validasi confirm password jika kosong
	else if(cpass == null || cpass.equals("")){
		response.sendRedirect("../register.jsp?err= Confirm Password must be filled");
	}
	//validasi confirm password harus sama dengan password
	else if(!pass.equals(cpass)){
	response.sendRedirect("../register.jsp?err=Confirm Password must same with Password");
	}
	//jika semua validasi sesuai
	else{

		st.executeUpdate("INSERT INTO member VALUES (null,'"+name+"', '"+email+"', '"+pass+"','member')");
		response.sendRedirect("../index.jsp");
	}
	


%>
