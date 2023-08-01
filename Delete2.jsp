<%@page import="java.sql.*"%>
<%
String s1=request.getParameter("u1");

try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql:///marksdb","root","root");
Statement st=con.createStatement();
int x=st.executeUpdate("delete from marks where UROL='"+s1+"'");
response.sendRedirect("showall.jsp");
con.close();
}
catch(Exception e1)
{
out.println(e1);
}
%>