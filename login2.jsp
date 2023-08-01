<%@page import="java.sql.*"%>
<%
String s1=request.getParameter("u1");
String s2=request.getParameter("u2");
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql:///marksdb","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from login where UNAME='"+s1+"' and UPASS='"+s2+"'");
if(rs.next())
{
     
 response.sendRedirect("MymenuDemo.jsp");
}
else
{
    //out.println("invalid name or pass");
   response.sendRedirect("login.jsp?s1=Invalid user Name and password "); 
}
con.close();
}
catch(Exception e1)
{
out.println(e1);
}
%>