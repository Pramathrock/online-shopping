<%@page errorPage="error.jsp" %>
<%@page import="project.Connectionprovider"%>
<%@page import="java.sql.*"%>
<%
try{
	Connection con = Connectionprovider.getcon();
	Statement st=con.createStatement();
	String q1="create table customers(name varchar(50),email varchar(50)primary key,mobileNumber Bigint,securityquestion varchar(200),answer varchar(200),password varchar(100),adress varchar(500),city varchar(100),state varchar(100),country varchar(100))";
	String q2="create table product(id int ,name varchar(500),category varchar(100),price int,active varchar(100))";
	System.out.print(q1);
	System.out.print(q2);
	//st.execute(q1);
	st.execute(q2);
	System.out.print("table created");
	con.close();
	
	
}
catch(Exception e){
	System.out.print(e);
	
}
%>
