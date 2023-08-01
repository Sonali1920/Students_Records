<%@page import="java.sql.*"%>
<%@include file="MymenuDemo.jsp"%>
<center>
<form action="search.jsp">
<table cellpadding="12">
<tr>
<td> Enter Roll</td>
<td> <input type="text" placeholder="Enter Roll" name="u1" class="A"></td>
</tr>
<tr>
<th colspan="2"><input type="submit" name="b1" value="Search" class="B"></th>
</tr>
</table>
</form>
        <%
          String s2=request.getParameter("b2");
          if(s2!=null){
        String s11=request.getParameter("u1");
        try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql:///marksdb","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from marks where UROL='"+s11+"'");
if(rs.next())
{
        %>
        <table cellpedding="12">
            <tr>
             <td> URNO </td>
             <td> <%=rs.getString(1)%> </td>
             </tr>
             
             <tr>
             <td> UNAME </td>
             <td> <%=rs.getString(2)%> </td>
             </tr>
             
             <tr>
             <td> UPHY </td>
             <td> <%=rs.getString(3)%> </td>
             </tr>
             
             <tr>
             <td> UCHE </td>
             <td> <%=rs.getString(4)%> </td>
             </tr>
             
             <tr>
             <td> UMATHS </td>
             <td> <%=rs.getString(5)%> </td>
             </tr>
        

             <%
             }
             else
{
out.println("Invalid Rolno...");
}

con.close();
}

catch(Exception e1)
{
out.println(e1);
}
}
%>
</table>
</center>

