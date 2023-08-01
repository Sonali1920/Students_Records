<%@page import="java.sql.*"%>
<%
String s1=request.getParameter("un");
String s2=request.getParameter("up");
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql:///marksdb","root","root");
Statement st=con.createStatement();
st.executeUpdate("insert into login values('"+s1+"','"+s2+"')");
out.println("data insert");
con.close();
}
catch(Exception e){

out.println(e);
}
%>