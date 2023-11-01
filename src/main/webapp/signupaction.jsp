<%@page import="project.Connectionprovider"%>
<%@page import="java.sql.*"%>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String mobileNumber=request.getParameter("mobileNumber");
String securityquestion=request.getParameter("securityquestion");
String answer=request.getParameter("answer");
String password=request.getParameter("password");
String adress="";
String city="";
String state="";
String country="";
try{
	Connection con=Connectionprovider.getcon();
	PreparedStatement ps=con.prepareStatement("insert into customers values(?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1, name);
	ps.setString(2, email);
	ps.setString(3, mobileNumber);
	ps.setString(4, securityquestion);
	ps.setString(5, answer);
	ps.setString(6, password);
	ps.setString(7, adress);
	ps.setString(8, city);
	ps.setString(9, state);
	ps.setString(10, country);
	ps.executeUpdate();
	response.sendRedirect("signup.jsp?msg=valid");
}
catch(Exception e){
	System.out.print(e);
	response.sendRedirect("signup.jsp?msg=invalid");
	}
%>